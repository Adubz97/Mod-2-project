class CollegesController < ApplicationController

  def index
    @colleges = College.all
  end

  def show
    @college = College.find(params[:id])
  end

end
