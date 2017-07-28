require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
    scenario "Can submit posts and view them" do
    sign_up
    create_post
    expect(page).to have_content("Hello, world!")
  end

  scenario "posts have the time" do
    Timecop.freeze(Time.parse("2017-07-25 14:56:46.490151 +0100"))
    sign_up
    create_post
    expect(page).to have_content('2017-07-25 13:56:46 UTC')
    Timecop.return
  end

  scenario "posts are displayed in reverse chron order" do
    sign_up
    create_post
    create_post(message: "Hello, universe!")
    expect('Hello, universe!').to appear_before('Hello, world!')
  end

  #scenario "user sees only their own posts" do
    sign_up
    create_post
    create_post(message: "Hello, universe!")
    locate(:css, '#post').value
  end

end
