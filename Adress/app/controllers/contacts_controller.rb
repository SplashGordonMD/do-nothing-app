class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
		render 'index.html.erb'
	end

	def new
		render 'new.html.erb'
	end

	def create
		@contact = Contact.new(id: params[:id],
			name: params[:name],
		phone: params[:phone], city: params[:city])

		if @contact.save
			redirect_to "/contacts/#{@contact.id}" 
		else
			render 'new.html.erb'
		end
	end

	def show
		@contact = Contact.find_by(id: params[:id])
		render 'show.html.erb'
	end

	def edit
		@contact = Contact.find_by(id: params[:id])
		render 'edit.html.erb'
	end

	def update
		@contact = Contact.find_by(id: params[:id])
		@contact.name = params[:name]
		@contact.phone = params[:phone]
		@contact.city = params[:city]
		@contact.save
		render 'update.html.erb'
	end

	def destroy
		@contact = Contact.find_by(id: params[:id])
		@contact.destroy
		render 'destroy.html.erb'
	end
end
