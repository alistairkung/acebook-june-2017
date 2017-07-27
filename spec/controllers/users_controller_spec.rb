require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET /show " do
    it "responds with 200" do
      user = User.create(name: 'Tom', email: 'Tom@mail.com', password: 'pass', password_confirmation: 'pass')
      session[:user_id] = user.id
      get :show
      expect(response).to have_http_status(200)
    end
    it "adds user to database" do
      expect{ User.create(name: "test", email: "test@test.com", password: "Password123",
        password_confirmation: "Password123") }.to change{ User.count }.by(1)
    end
  end
end
