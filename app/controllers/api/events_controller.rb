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
      @event = Event.new(event_params)
      if @event.save
        render json: @event
      else
        render json: { errors: @event.errors.full_messages }, status: 422
      end
    end

    def update
      @event = Event.find(params[:id])
      if @event.update_attributes(event_params[:id])
        render json: @event
      else
        render json: { errors: @event.errors.full_messages }, status: 422
      end
    end

    def destroy
      Event.find(params[:id]).try(:destroy)
      render json: nil
    end

    private 
    
    def event_params
      params.require(:event).permit(:name, :longitude, :latitude)
    end
end
