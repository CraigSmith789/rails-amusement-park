class RidesController < ApplicationController
  def new
  end

  def create
    ride = Ride.new(ride_params)
    ride.save
    message = ride.take_ride
    
    redirect_to user_path(ride.user), notice: message 
  end
  def show
    @ride = Ride.find(params[:id])
  end


  private

  def ride_params
    params.require(:ride).permit(
    :user_id,
    :attraction_id
    )
  end


end
