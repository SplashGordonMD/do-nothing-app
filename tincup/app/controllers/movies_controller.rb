class MoviesController < ApplicationController

	def index
		@movies = Movie.all
		render "index.html.erb"
	end

	def new
		render "new.html.erb"
	end
	
	def create
		movie = Movie.new(name: params[:name], genera: params[:genera])
		movie.save
		#render "create.html.erb"
		redirect_to '/movies/#{movies}'
	end
	
	def show
		@movie = Movie.find_by(id: params[:id])
		render "show.html.erb"
	end
	
	def edit
		@movie = Movie.find_by(id: params[:id])
		render "edit.html.erb"
		#redirect_to '/movies/#{movies:id}'
	end
	
	def update
		@movie_id = params[:id]
		@movie = Movie.find_by(id: params[:id])
		@movie.name = params[:name]
		@movie.genera = params[:genera]
		@movie.save 
		#render "update.html.erb"
		flash[:success] = "Movie successfully updated!"
		redirect_to '/movies/#{movies:id}'
	end
	
	def destroy
		@movie = Movie.find_by(id: params[:id])
		@movie.destroy
		#render "destroy.html.erb"
		redirect_to '/movies/#{movies:id}'
	end
	
end

