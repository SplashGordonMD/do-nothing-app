class BugsController < ApplicationController
  def index
    @bugs = Bug.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    bug = Bug.new(name: params[:name], body: params[:body])
    bug.save
    render 'create.html.erb'
  end

  def show
    @bug = Bug.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @bug = Bug.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @bug = Bug.find_by(id: params[:id])
    @bug.name = params[:name]
    @bug.body = params[:season]
    @bug.save
    render 'update.html.erb'
  end

  def destroy
    @bug = Bug.find_by(id: params[:id])
    @bug.destroy
    render 'destroy.html.erb'
  end

end
