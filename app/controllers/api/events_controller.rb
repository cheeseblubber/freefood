class Api::EventsController < ApplicationController
    def index
      @events = Event.all
      render json: @events.to_json
    end

    def show
    end

    def create
    end

    def update
    end

    def destroy
    end
end
