require "rails_helper"

RSpec.describe UserStatsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_stats").to route_to("user_stats#index")
    end

    it "routes to #new" do
      expect(:get => "/user_stats/new").to route_to("user_stats#new")
    end

    it "routes to #show" do
      expect(:get => "/user_stats/1").to route_to("user_stats#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_stats/1/edit").to route_to("user_stats#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_stats").to route_to("user_stats#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_stats/1").to route_to("user_stats#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_stats/1").to route_to("user_stats#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_stats/1").to route_to("user_stats#destroy", :id => "1")
    end

  end
end
