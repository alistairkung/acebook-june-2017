require 'rails_helper'

RSpec.feature "User Page", type: :feature do
  scenario "User can view other user pages" do
    sign_up
    create_post
    click_link "Comment"
    create_comment
    expect(page).to have_content("I'm a comment")
  end
end
