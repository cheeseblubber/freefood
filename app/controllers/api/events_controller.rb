class Api::EventsController < ApplicationController
    def index
      @events = Event.all
      render json: @events.to_json
    end

    def show
      @event = Event.find(params[:id])
      render json: @event
    end

    def create
      # @event =
    end

    def update
    end

    def destroy
    end

    private 
    
    def events_params
      params.require(:event).permit(:name, :longitude, :latitude)
    end
end
