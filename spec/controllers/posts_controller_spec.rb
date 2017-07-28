require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  require "spec_helper"
  include Capybara::DSL
  describe "GET /new " do
    it "responds with 200" do
      sign_up
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
<<<<<<< HEAD
      sign_up
      session[:user_id] = 1
      @user = User.find(session[:user_id])
      post :create, params: { post: { message: "Hello, world!" } }
      expect(response).to redirect_to(@user)
    end

    it "creates a post" do
      sign_up
      session[:user_id] = 1
      @user = User.find(session[:user_id])
=======
      user = User.create(name: 'Tom', email: 'Tom@mail.com', password: 'pass', password_confirmation: 'pass')
      session[:user_id] = user.id
      post :create, params: { post: { message: "Hello, world!" } }
      expect(response).to redirect_to(user)
    end

    it "creates a post" do
      user = User.create(name: 'Tom', email: 'Tom@mail.com', password: 'pass', password_confirmation: 'pass')
      session[:user_id] = user.id
>>>>>>> 7795415ef67a57927c958fd823eacfd9eaa8e094
      post :create, params: { post: { message: "Hello, world!" } }
      expect(Post.find_by(message: "Hello, world!")).to be
    end
  end

  describe "GET /" do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
