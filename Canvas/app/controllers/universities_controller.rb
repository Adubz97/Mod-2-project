class UniversitiesController < ApplicationController
  
  def home
    render :home
  end

  def login
    render :login
  end

  def create
    render :create
  end

  def about
    @university = University.first
    render :about
  end
end
