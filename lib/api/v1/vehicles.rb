module Api
  module V1
    class Vehicles < Grape::API

      resource :vehicles do

        desc "Return a list of vehicles."
        get do
          vehicles = Vehicle.all
          present vehicles
        end

        desc "Return a vehicle."
        params do
          requires :id, type: Integer, desc: "Vehicle id."
        end
        route_param :id do
          get do
            vehicle = Vehicle.find(params[:id])
            present vehicle
          end
        end

      end
    end
  end
end