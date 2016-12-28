class Api::V1::GolfClubsController < ApplicationController
  def index
    @golf_clubs = GolfClub.all
    render 'index.json.jbuilder'
  end

  def show
    @golf_club = GolfClub.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
  	@golf_club = GolfClub.new(variety: params[:variety],
         brand: params[:brand], number: params[:number])

  	if @golf_club.save
  		render 'show.json.jbuilder'
  	else 
  		render json: { errors: @golf_club.errors.full_messages }, status: 422
  	end
  end
end
