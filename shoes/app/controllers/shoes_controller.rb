class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
    render "index.json.jbuilder"

  end

  def show
    @shoe = Shoe.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
end