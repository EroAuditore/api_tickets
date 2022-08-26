require "rails_helper"

RSpec.describe RetornosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/retornos").to route_to("retornos#index")
    end

    it "routes to #show" do
      expect(get: "/retornos/1").to route_to("retornos#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/retornos").to route_to("retornos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/retornos/1").to route_to("retornos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/retornos/1").to route_to("retornos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/retornos/1").to route_to("retornos#destroy", id: "1")
    end
  end
end
