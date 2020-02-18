class TentsController < ApplicationController

  def index
    @tents = Tent.all
  end

  def show
    @tent = Tent.find(params[:id])
  end

  def new
    @tent = Tent.new
  end

  def create
  @tent = Tent.new(tent_params)
  @tent.user = current_user
    if @tent.save
      redirect_to tent_path(@tent)
    else
      render :new
    end
  end

  def destroy
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
     params.require(:tent).permit(:title, :photos, :comfort_level, :description, :location, :price, :capacity, :user_id)
  end

end
