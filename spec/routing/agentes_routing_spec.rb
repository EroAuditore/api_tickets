require "rails_helper"

RSpec.describe AgentesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/agentes").to route_to("agentes#index")
    end

    it "routes to #show" do
      expect(get: "/agentes/1").to route_to("agentes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/agentes").to route_to("agentes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/agentes/1").to route_to("agentes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/agentes/1").to route_to("agentes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/agentes/1").to route_to("agentes#destroy", id: "1")
    end
  end
end
