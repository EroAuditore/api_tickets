require "rails_helper"

RSpec.describe ComisionesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/comisiones").to route_to("comisiones#index")
    end

    it "routes to #show" do
      expect(get: "/comisiones/1").to route_to("comisiones#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/comisiones").to route_to("comisiones#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/comisiones/1").to route_to("comisiones#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/comisiones/1").to route_to("comisiones#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/comisiones/1").to route_to("comisiones#destroy", id: "1")
    end
  end
end
