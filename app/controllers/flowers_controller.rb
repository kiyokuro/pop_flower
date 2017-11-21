class FlowersController < ApplicationController
  before_action :set_flower, only: [:update]

  def new
    @flower = Flower.new
  end

 
  def create
    event = Event.find(params[:event_id])
    @flower = event.flowers.new(post_params.merge({votes_num: 0}))
    if @flower.save
      redirect_to event_path(event.id)
    else
      render 'new'
    end
  end
  
  def update
    @flower.update_attributes(flower_params)
    @event  = Event.find(@flower.event_id)

    redirect_to @event
  end

private
  def post_params
    params.require(:flower).permit(:name,)
  end
  
  def set_flower
      @flower = Flower.find(params[:id])
  end
end
