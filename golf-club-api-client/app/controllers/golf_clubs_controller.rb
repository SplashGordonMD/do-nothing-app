class GolfClubsController < ApplicationController
  def index
    
    @golf_clubs = Unirest.get(
      "http://localhost:2000/golf_clubs",
       headers: { 'Authorization' => "Token token=splash",
        'X-User-Email' => "test@test.com"}).body
    
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
