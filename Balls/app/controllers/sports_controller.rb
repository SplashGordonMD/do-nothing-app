class SportsController < ApplicationController
  def index
    @sports = Sport.all
    render 'index.html.erb'
  end
  
  def new
    render 'new.html.erb'
  end
  
  def create
    sport = Sport.new(name: params[:name], tool: params[:tool])
    sport.save
    render 'create.html.erb'
  end
  
  def show
    @sport = Sport.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @sport = Sport.find_by(id: params[:id])
    render 'edit.html.erb'
  end
  
  def update
    @sport = Sport.find_by(id: params[:id])
    @sport.name = params[:name]
    @sport.tool = params[:tool]
    @sport.save
    render 'update.html.erb'
  end

  def destroy
    @sport = Sport.find_by(id: params[:id])
    @sport.destroy
    render 'destroy.html.erb'
  end 
end
