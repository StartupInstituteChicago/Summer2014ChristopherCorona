require 'spec_helper'

describe OwnersController do
  describe "logged-in owner" do
    it "renders the dashboard template" do
      @user = User.first
      get :dashboard
      response.should render_template :dashboard
    end
  end

    describe "not logged-in owner" do
    it "it does not render the dashboard template" do
      get :dashboard
      response.should render_template :dashboard
    end
  end
end

