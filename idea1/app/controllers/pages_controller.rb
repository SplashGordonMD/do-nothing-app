class PagesController < ApplicationController
  def welcome_method
    render 'example.html.erb'
  end
end