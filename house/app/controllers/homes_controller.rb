class HomesController < ApplicationController
	def index
		@homes = Home.all
		render 'index.html.erb'
	end 	

	def new
		render 'new.html.erb'
	end

	def create
		home = Home.new(set: params[:set], variety: params[:variety])
		home.save
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
