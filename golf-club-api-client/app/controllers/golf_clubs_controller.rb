class GolfClubsController < ApplicationController
  def index
    @golf_clubs = Unirest.get("http://localhost:3000/golf_clubs").body
    render 'index.html.erb'
  end

  def new
    render
  end

  def create
    render
  end

  def show
    render 'show.html.erb'
  end

  def edit
    render 
  end

  def update
    render
  end

  def destroy
    render
  end

end
