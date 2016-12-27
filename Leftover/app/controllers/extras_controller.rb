class ExtrasController < ApplicationController
	def index
		@extras = Extra.all
		render 'index.html.erb'
	end

	def new
		render 'new.html.erb'
	end

	def create
		extra = Extra.new(name: params[:name], heating: params[:heating])
		extra.save
		render 'create.html.erb'
	end

	def show
		@extra = Extra.find_by(id: params[:id])
		render 'show.html.erb'
	end

	def edit
		@extra = Extra.find_by(id: params[:id])
		render 'edit.html.erb'
	end

	def update
		@extra = Extra.find_by(id: params[:id])
		@extra.name = params[:name]
		@extra.heating = params[:heating]
		@extra.save
		render 'update.html.erb'
	end

	def destroy
		@extra = Extra.find_by(id: params[:id])
		@extra.destroy
		render 'destroy.html.erb'
	end

end
