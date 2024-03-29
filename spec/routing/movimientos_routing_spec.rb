require "rails_helper"

RSpec.describe MovimientosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/movimientos").to route_to("movimientos#index")
    end

    it "routes to #show" do
      expect(get: "/movimientos/1").to route_to("movimientos#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/movimientos").to route_to("movimientos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/movimientos/1").to route_to("movimientos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/movimientos/1").to route_to("movimientos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/movimientos/1").to route_to("movimientos#destroy", id: "1")
    end
  end
end
