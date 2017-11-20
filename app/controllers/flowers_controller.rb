class FlowersController < ApplicationController
  def new
    event = Event.find(params[:id])
    @flower = Flower.new
  end

  def create
    @flower = event.flower.new(params[:flower])
    if @flower.save
      redirect_to events_path
      # notice[:success]
    else
      render 'new'
    end
  end


end
