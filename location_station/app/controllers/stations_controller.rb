class StationsController < ApplicationController
  def index
    @stations = Unirest.get("https://data.cityofchicago.org/resource/9rg7-mz9y.json").body
    render 'index.html.erb'
  end
end


