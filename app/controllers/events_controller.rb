class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update]

  def index
  end

  def show
    @flowers = @event.flowers
  end

  def update
    return false unless params[:options]
    @flower = Flower.find(params[:options])
    @flower.votes_up
    redirect_to @event
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end
end
