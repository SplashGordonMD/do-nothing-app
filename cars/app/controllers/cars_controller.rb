class CarsController < ApplicationController
  def index
    @cars = Car.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    car = Car.new(make: params[:make], model: params[:model])
    car.save
    render 'create.html.erb'
  end

  def show
    render 'show.html.erb'
  end

  def edit
    render 'edit.html.erb'
  end

  def update
    render 'update.html.erb'
  end

  def destroy
    render 'destroy.html.erb'
  end

end
