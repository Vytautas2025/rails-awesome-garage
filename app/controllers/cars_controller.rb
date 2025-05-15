class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
  end

  # privte

  # def car_params
  #   params.require(:car).permit()

end
