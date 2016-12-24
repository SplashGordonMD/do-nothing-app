class IcecreamsController < ApplicationController
  
  def index 
  	 @icecreams = Icecream.all
   render 'index.html.erb'
  end

  def new
  	@icecreams = Icecream.new
   render 'new.html.erb'
  end

  def create
   render 'create.html.erb'
  end

  def show
  	@icecreams=Icecream.find_by(id: params[:id])
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
