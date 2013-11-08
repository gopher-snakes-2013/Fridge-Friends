require 'spec_helper'

describe FridgesController do
  it "#index" do
    get :index
    response.status.should eq(200)
  end
end