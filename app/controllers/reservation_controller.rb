class ReservationController < ApplicationController
  def show
    @resource = Resource.find(params[:id])
    @reservations = Reservation.where(resource_id: params[:id])
    puts 'inspect eredménye:'
    puts @reservations.inspect
  end
  def new
    @resource = Resource.find(params[:resource_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.resource_id = params[:resource_id]
    puts @reservation.inspect
    if validate(@reservation) && @reservation.save
      redirect_to reservation_path(params[:resource_id])
    else
      flash[:errors] = @reservation.errors.full_messages
      redirect_to reservation_new_path(params[:resource_id])
    end
  end
  def delete
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    puts "inspect eremdénye:"
    puts @resource.inspect
    puts params.inspect
    puts params[:resource_id]
    redirect_to reservation_path(params[:resource_id])
  end
  private
  def reservation_params
    params.require(:reservation).permit(:lefoglaló_neve, :mettől, :meddig)
  end
  def validate(reservation)
    true
  end
end
