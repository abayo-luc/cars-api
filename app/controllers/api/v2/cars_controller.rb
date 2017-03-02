class Api::V2::CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def create
    @car = Car.new(identification_number: params[:identification_number], manufacturer: params[:manufacturer])
    @car.save
  end

  def show
    @car = Car.find_by(id:params[:id])
  end

  def update
    @car = Car.find_by(id:params[:id])
    @car.update(identification_number: params[:identification_number], manufacturer: params[:manufacturer])
  end

  def destroy
    car = Car.find_by(id:params[:id])
    car.destroy
  end
end
