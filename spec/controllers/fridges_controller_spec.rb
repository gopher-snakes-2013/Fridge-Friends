require 'spec_helper'

describe FridgesController do
  it "#index" do
    get :index
    response.status.should eq(200)
  end

  context "#create" do
    it "creates a new fridge with valid params" do
      expect {
        post :create, fridge: { name: "Food Titanic" }
      }.to change{ Fridge.count }.by(1)
    end

    it "should not create a new fridge without valid params" do
      expect {
        post :create, fridge: { name: "" }
      }.not_to change{ Fridge.count }
    end
  end
end