class BookingsController < ApplicationController
  def new
    @tent = Tent.find(params[:tent_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
     @tent = Tent.find(params[:tent_id])
     @booking.tent = @tent
    if @booking.save
      redirect_to tent_path(@tent)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:tent).permit(:start_date, :end_date, :total_price)
  end
end
