class GolfClubsController < ApplicationController
  def index
    @golf_clubs = GolfClub.all
    render 'index.json.jbuilder'
  end

  def show
    @golf_club = GolfClub.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
end
