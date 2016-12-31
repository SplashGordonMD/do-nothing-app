class HuntersController < ApplicationController
 	def index
 	  @hunters = Hunter.all	
 		render 'index.html.erb'
 	end

 	def new
 		render 'new.html.erb'
 	end

 	def create
 	  hunter = Hunter.new(sport: params[:sport], season: params[:season])
		hunter.save
		#render "create.html.erb"
	    redirect_to "/hunters/#{hunters}"
 	end

 	def show
 	@hunter = Hunter.find_by(id: params[:id])	
 	render "show.html.erb"
 	end

 	def edit
 	@hunter = Hunter.find_by(id: params[:id])
 	render "edit.html.erb"
 	end

 	def update
 		@hunter = Hunter.find_by(id: params[:id])
 		# @hunter_id = params[:id]
		@hunter.sport = params[:sport]
		@hunter.season = params[:season]
		@hunter.save 
		render "update.html.erb"
		# flash[:success] = "Hunting season successfully updated!"
		# redirect_to '/hunters/#{hunters:id}'
    end

 	def destroy
 		@hunter = Hunter.find_by(id: params[:id])
		@hunter.destroy
		#render "destroy.html.erb"
	redirect_to '/hunters/#{hunters:id}'
 	end


end
