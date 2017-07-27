require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET /new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
      user = User.create(name: 'Tom', email: 'Tom@mail.com', password: 'pass', password_confirmation: 'pass')
      session[:user_id] = user.id
      post :create, params: { post: { message: "Hello, world!" } }
      expect(response).to redirect_to(user)
    end

    it "creates a post" do
      user = User.create(name: 'Tom', email: 'Tom@mail.com', password: 'pass', password_confirmation: 'pass')
      session[:user_id] = user.id
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
