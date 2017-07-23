class SportsController < ApplicationController
  def index
    @sports = Sport.all
    render 'index.html.erb'
  end
  
  def new
    render 'new.html.erb'
  end
  
  def create
    sport = Sport.new(
    name: params[:name],
    tool: params[:tool]
    )
    sport.name = params[:name]
    sport.tool = params[:tool]
    sport.save
    flash[:success] = "New Sport created"
    redirect_to "/sports/#{@sport.id}"
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
    flash[:success] = "New Sport created"
    redirect_to "/sports/#{@sport.id}"
  end

  def destroy
    @sport = Sport.find_by(id: params[:id])
    @sport.destroy
    flash[:success] = "New Sport created"
    redirect_to "/sports/#{@sport.id}"
  end 
end
