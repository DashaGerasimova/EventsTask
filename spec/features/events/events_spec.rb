require "rails_helper"

RSpec.describe "Events#index", :type => :feature do
  before(:example) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  it "shows events" do
    FactoryGirl.create(:event, title: "some event", user: @user)
    visit "/events"
    expect(page).to have_content("some event")
  end

  it "can create new event from /index page" do 
    visit "/events"
    click_on "Создать новое событие"
    expect(page).to have_content("Создание нового события")
    fill_in "event[title]", :with => "какое-то событие"
    click_on "Принять"
    expect(page).to have_content("какое-то событие")
  end
end