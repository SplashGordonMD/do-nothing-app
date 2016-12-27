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
		@home = Home.find_by(id: params[:id])
		render 'show.html.erb'
	end

	def edit
		@home = Home.find_by(id: params[:id])
		render 'edit.html.erb'
	end

	def update
		@home = Home.find_by(id: params[:id])
		@home.set = params[:set]
		@home.variety = params[:variety]
		@home.save
		render 'update.html.erb'
	end

	def destroy
		@home = Home.find_by(id: params[:id])
		@home.destroy
		render 'destroy.html.erb'
	end

 end
