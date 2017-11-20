class FlowersController < ApplicationController
  before_action :set_flower, only: [:update]

  def new
  end

  def update
    @flower.update_attributes(flower_params)
    @event  = Event.find(@flower.event_id)

    redirect_to @event
  end

  private

    def set_flower
      @flower = Flower.find(params[:id])
    end
end
