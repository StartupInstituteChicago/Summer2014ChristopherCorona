# Disable fixtures in test/test_helper.rb a. Remove the line with ‘fixtures :all’ (usually line 12) b. Remove the fixtures directory ( test/fixtures )

# Create a controller test for the Index, New, Create, Edit, Update actions

# Create a controller test for the Show action when given a valid Restaurant id

# Create a controller test for the Show action when given an invalid Restaurant id (e.g. -1 or abc)


require 'spec_helper'

describe RestaurantsController do
  describe "create controller" do
    it "redirects to the home page" do
      restaurant = Restaurant.create(name: "Asian Bistro", description: "Szechuan Chinese Food", address: "Arlington Heights", phone_number: "8475551234")
      expect(Restaurant.last).to eq(restaurant)
    end
  end

  describe "index controller" do
    it "assigns @restaurants" do
      restaurant = Restaurant.create(name: "Asian Bistro", description: "Szechuan Chinese Food", address: "Arlington Heights", phone_number: "8475551234")
      get :index
      expect(assigns(:restaurants)).to eq([restaurant])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
  
  describe "show controller" do
    it "assigns @restaurant" do
      @restaurant = Restaurant.create(name: "Asian Bistro", description: "Szechuan Chinese Food", address: "Arlington Heights", phone_number: "8475551234")
      get :show, id: @restaurant
      assigns(:restaurant).should == @restaurant
    end

    it "assigns @restaurant" do
      @restaurant = Restaurant.create(name: "Asian Bistro", description: "Szechuan Chinese Food", address: "Arlington Heights", phone_number: "8475551234")
      get :show, id: @restaurant
      assigns(:restaurant).should == @restaurant
    end

    it "errors out when given invalid Restaurant id" do
      @restaurant = Restaurant.create(name: "Asian Bistro", description: "Szechuan Chinese Food", address: "Arlington Heights", phone_number: "8475551234")
      get :show, id: @jibberjabberish
      assigns(:restaurant).should != @restaurant
    end


    it "renders show template" do
      @restaurant = Restaurant.create(name: "Asian Bistro", description: "Szechuan Chinese Food", address: "Arlington Heights", phone_number: "8475551234")
      get :show, id: @restaurant
      response.should render_template :show
    end
  end




end