class FoodsController < ApplicationController
  def index
    @foods = Food.all   
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    food = Food.new(name: params[:name], variety: params[:variety])
    food.save
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
