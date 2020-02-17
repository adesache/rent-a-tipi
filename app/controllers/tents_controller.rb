class TentsController < ApplicationController

  def index
    @tents = Tent.new
  end

  def show
    @tent = Tent.find(params[:id])
  end

  def new
    @tent = Tent.new
  end

  def create
  @tent = Tent.new(tent_params)
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

  private

  def tent_params
     params.require(:tent).permit(:title, :photos, :comfort_level, :description, :location, :price, :capacity)
  end

end
