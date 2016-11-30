class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    render '/diets' => 'diets#index'
  end

  def new
    render '/diets/new' => 'diets#new'
  end

  def create
    render '/diets' => 'diets#create'
  end

  def show
    render '/diets/:id' => 'diets#show'
  end

  def edit
    render '/diets/:id/edit' => 'diets#edit'
  end

  def update
    render '/diets/:id' => 'diets#update'
  end

  def destryo
    render '/diets/:id' => 'diets#destroy'