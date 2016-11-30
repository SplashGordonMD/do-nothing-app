class ZoosController < ApplicationController
  def index
    @zoos=Zoo.all
    render 'index.html.erb'
  end

end
