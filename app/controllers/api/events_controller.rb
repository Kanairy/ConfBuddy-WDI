module Api
    class EventsController < ApplicationController

      def index
        events = Event.all
        render json: types.to_json, status: 201

      end

      def show
        event = Event.find(params[:id])
        render json: event.to_json, status: 201
      end

    end
end
