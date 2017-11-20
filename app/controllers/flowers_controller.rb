class FlowersController < ApplicationController
  def new
    @flower = Flower.new
  end

  def create
    event = Event.find(params[:event_id])
    @flower = event.flowers.new(post_params)
    if @flower.save
      redirect_to event_path(event.id)
    else
      render 'new'
    end
  end

private
  def post_params
    params.require(:flower).permit(:name)
  end

end
