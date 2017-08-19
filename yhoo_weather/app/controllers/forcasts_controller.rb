class ForcastsController < ApplicationController
  def index
    city = params [:city]
    state = params [:state]
    @data = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22chicago%2C%20il%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys").body
    @temperature = @data["query"]["results"]["channel"]["item"]["condition"]["temp"]
    @forcasts = @data["query"]["results"]["channel"]["item"]["forecast"]
    @description = @data["query"]["results"]["channel"]["item"]["description"]
    render 'index.html.erb'
  end

  def create
    @data = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{params[:city]}%2C%20{params[:state]}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys").body
    @temperature = @data["query"]["results"]["channel"]["item"]["condition"]["temp"]
    @forcasts = @data["query"]["results"]["channel"]["item"]["forecast"]
    render "index.html.erb"
  end

end
