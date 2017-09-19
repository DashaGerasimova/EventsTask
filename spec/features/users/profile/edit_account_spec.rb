require "rails_helper"

RSpec.describe "User can manage his account in profile", :type => :feature do
  let!(:user) { FactoryGirl.create(:user, password: "password") }
  before(:example) do
    sign_in user
  end

  it "can edit accout" do 
    visit "/profile"
    click_on "Редактировать"
    fill_in "Email", :with => "Edited@email.com"
    fill_in "Password", :with => "newpass"
    fill_in "Password confirmation", :with => "newpass"
    fill_in "Current password", :with => "password"
    click_on "Update"
  end

  it "can sign out from account" do
    visit "/profile"
    click_on "Выйти"
  end
end