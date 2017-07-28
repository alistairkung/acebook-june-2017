require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "User can land on comment creation page" do
    sign_up
    create_post
    click_link "Comment"
    expect(page).to have_content("Comment")
  end

  scenario "User can create a comment" do
    sign_up
    create_post
    click_link "Comment"
    expect { create_comment }.to change(Comment, :count).by(1)
  end
end
