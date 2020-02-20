class TentsController < ApplicationController

skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @tents = policy_scope(Tent)
    # @tents = Tent.all || []
    if params[:query].present?
      @tents = Tent.geocoded
      @tents = @tents.near(params[:query], 10)
      @marker = @tents.each do |tent|
        [{
          lat: tent.latitude,
          lng: tent.longitude,
          image_url: helpers.asset_url('tent-icon'),
        }]
      end
    end
      @tents = Tent.all
    @marker = @tents.each do |tent|
        [{
          lat: tent.latitude,
          lng: tent.longitude,
          image_url: helpers.asset_url('tent-icon'),
        }]
      end
    end


  def show
    @booking = Booking.new
    @tent = Tent.find(params[:id])
    @markers =
      [{
        lat: @tent.latitude,
        lng: @tent.longitude,
        image_url: helpers.asset_url('tent-icon'),
      }]
    authorize @tent
  end

  def new
    @tent = Tent.new
    authorize @tent
  end

  def create
  # raise
  @tent = Tent.new(tent_params)
  @tent.user = current_user
  authorize @tent
    if @tent.save
      redirect_to tent_path(@tent)
    else
      render :new
    end
  end

  def destroy
    authorize @tent
    @tent = Tent.find(params[:id])
    @tent.destroy

    redirect_to tents_path
  end

  def edit
    @tent = Tent.find(params[:id])
  end

  def update
    @tent.update(tent_params)

    redirect_to tent_path(@tent)
  end

  private

  def tent_params
     params.require(:tent).permit(:title, :comfort_level, :description, :location, :price, :capacity, :user_id, :photo_one, :photo_two, :photo_three, :avatar)
  end

end
