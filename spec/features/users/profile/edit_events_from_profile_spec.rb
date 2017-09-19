require 'rails_helper'

RSpec.describe 'User can manage events from profile', type: :feature do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:event) { FactoryGirl.create(:event, user: user) }
  before(:example) do
    sign_in user
  end

  it 'user can edit his event' do
    visit '/profile'
    expect(page).to have_content(event.title)
    click_on "#{event.title} (Редактировать )"
    expect(page).to have_content('Редактирование события')
    fill_in 'event[title]', with: 'Edited'
    click_on 'Принять'
    expect(page).to have_content('Edited')
  end

  it 'user can delete his event' do
    visit '/profile'
    click_on "#{event.title} (Редактировать )"
    click_on 'Удалить событие'
  end
end
