class EventsController < ApplicationController
  before_action :set_event, only: [:show]

  def index
  end

  def show
    @flowers = @event.flowers
  end

  def update
    binding.pry
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end
end
