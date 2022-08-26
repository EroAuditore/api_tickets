require "rails_helper"

RSpec.describe SolicitudesFacturasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/solicitudes_facturas").to route_to("solicitudes_facturas#index")
    end

    it "routes to #show" do
      expect(get: "/solicitudes_facturas/1").to route_to("solicitudes_facturas#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/solicitudes_facturas").to route_to("solicitudes_facturas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/solicitudes_facturas/1").to route_to("solicitudes_facturas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/solicitudes_facturas/1").to route_to("solicitudes_facturas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/solicitudes_facturas/1").to route_to("solicitudes_facturas#destroy", id: "1")
    end
  end
end
