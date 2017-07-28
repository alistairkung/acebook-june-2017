require 'rails_helper'

RSpec.feature "Likes", type: :feature do
    scenario "User can like a post" do
    sign_up
    create_post
    click_link "Like"
    expect(page).to have_content("Like")
  end
