class ToysController < ApplicationController
  def index 
    @toys= Toy.all
  end

  def new
  end

  def create
    @toy= Toy.new(
      name: params[:name],
      game: params[:game]
    )
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
