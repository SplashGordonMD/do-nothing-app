class SportsController < ApplicationController
  def index
    sort_attribute = params[:sort]
    if current_user
      @sports = current_user.sports
    else
      @sports = []
    end
    render 'index.html.erb'
  end
  
  def new
    render 'new.html.erb'
  end
  
  def create
    sport = Sport.new(
    name: params["name"],
    tool: params["tool"]
    )
    sport.name = params[:name]
    sport.tool = params[:tool]
    sport.save
    flash[:success] = "New Sport created"
    redirect_to "/sports/#{sport.id}"
  end
  
  def show
    sport_id = params[:id]
    @sport = Sport.find_by(id: sport_id)
    render 'show.html.erb'
  end

  def edit
    sport_id = params[:id]
    @sport = Sport.find_by(id: sport_id)
    render 'edit.html.erb'
  end
  
  def update
    sport_id = params[:id]
    sport = Sport.find_by(id: sport_id)
    sport.name = params[:name]
    sport.tool = params[:tool]
    sport.save
    flash[:success] = "Sports successfully updated"
    redirect_to "/sports/#{@sport.id}"
  end

  def destroy
    sport_id = params[:id]
    sport = Sport.find_by(id: sport_id)
    sport.destroy
    flash[:warning] = "Sport successfully destroyed"
    redirect_to "/sports"
  end 
end
