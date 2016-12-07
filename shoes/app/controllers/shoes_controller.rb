class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
    render "index.json.jbuilder"

  end

  def show
    @shoe = Shoe.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @shoe = Shoe.new(
      use: params[:use],
      material: params[:material]
    )
    @shoe.save
    # redirect_to "/employees/#{@employee.id}"
    render 'show.json.jbuilder'
  end


  def update
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.update(use: params[:use], material: params[:material])
    render 'show.json.jbuilder' 
  end

  def destroy
    @shoe = Shoe.find_by(id: params[:id])
    @show.destroy
  end
end
