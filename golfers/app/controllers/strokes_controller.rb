class StrokesController < ApplicationController
  def index
    @strokes = Stroke.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    stroke = Stroke.new(name: params[:name], body: params[:body])
    stroke.save 
    render 'create.html.erb'
  end

  def show
    @stroke = Stroke.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @stroke = Stroke.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @stroke = Stroke.find_by(id: params[:id])
    @stroke.name = params[:name]
    @message.body = params[:body]
    @message.save
    render 'update.html.erb'
  end

  def destroy
    @stroke = Stroke.find_by(id: params[:id])
    @stroke.destroy
    render 'destroy.html.erb'
  end
end
