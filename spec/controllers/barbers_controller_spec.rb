require 'rails_helper'

RSpec.describe Barber::BarbersController, type: :controller do
  describe "barber/barbers#create action" do
    it "should allow users to create a new barber" do
      user = FactoryBot.create(:user)
      sign_in user
      post :create, params: { barber: { name: 'Scott Ingram'
      } }
      expect(user.barbers.last.name).to eq "Scott Ingram"
    end

    it "should require a user to be logged in to create a barber" do
      post :create, params: { barber: {name: "Jonathan Kelley"}}
      expect(response).to redirect_to new_user_session_path
    end
  end

  describe "barber/barbers#show" do
    it "should load a page if the barber is found" do
      barber = FactoryBot.create(:barber)
      get :show, params: {id: barber.id}
      expect(response).to have_http_status(:found)
    end
  end

end