require "rails_helper"

RSpec.describe FollowersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/followers").to route_to("followers#index")
    end

    it "routes to #new" do
      expect(get: "/followers/new").to route_to("followers#new")
    end

    it "routes to #show" do
      expect(get: "/followers/1").to route_to("followers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/followers/1/edit").to route_to("followers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/followers").to route_to("followers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/followers/1").to route_to("followers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/followers/1").to route_to("followers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/followers/1").to route_to("followers#destroy", id: "1")
    end
  end
end
