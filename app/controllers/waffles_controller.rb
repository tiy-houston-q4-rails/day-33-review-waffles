class WafflesController < ApplicationController
  def index
    @waffles = Waffle.all
  end

  def new
    @waffle = Waffle.new
  end

  def create
    @waffle = Waffle.new(params.require(:waffle).permit(:photo))
    if @waffle.save
      redirect_to root_path
    else
      render :new
    end
  end
end
