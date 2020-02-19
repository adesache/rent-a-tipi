class BookingsController < ApplicationController
  def new
    @tent = Tent.find(params[:tent_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @tent = Tent.find(params[:tent_id])
    @booking.user = current_user
    @booking.tent = @tent
    authorize @booking
    if @booking.save
      redirect_to tent_path(@tent)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :user_id, :tent_id)
  end
end
