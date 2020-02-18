class TentsController < ApplicationController

skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @tents = policy_scope(Tent)
    # @tents = Tent.all || []
  end

  def show
    authorize @tent
    @tent = Tent.find(params[:id])
  end

  def new
    @tent = Tent.new
    authorize @tent
  end

  def create
  @tent = Tent.new(tent_params)
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
     params.require(:tent).permit(:title, :photos, :comfort_level, :description, :location, :price, :capacity)
  end

end
