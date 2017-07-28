
require 'rails_helper'

RSpec.feature "Likes", type: :feature do

  def click_l
    click_button "Submit"
  end

    scenario "User can like a post" do
    sign_up
    create_post
    click_link "Like"
    expect(page).to have_content("Like")
  end

    scenario "User can add a like in the database" do
    sign_up
    create_post
    click_link "Like"
    expect{ click_l }.to change{ Like.count }.by(1)
  end

end
