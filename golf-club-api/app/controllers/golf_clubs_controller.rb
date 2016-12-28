class GolfClubsController < ApplicationController
	def index
		@golf_clubs = Golf_club.all
		render 'index.json.jbuilder'
	end

	def create
		@golf_club = Golf_club.new(
			variety: params[:variety],
			number: params[:number],
			brand: params[:brand]
			)
		@golf_club.save
		render 'show.json.jbuilder'
	end	
end


