class ProfessorsController < ApplicationController

  def index
    @professors = Professor.all
  end

  def show
    @professor = Professor.find(params[:id])
  end

 def new
    @professor = Professor.new
  end

  def create
    @professor =Professor.new(professor_params)
    if @professor.valid?
      @professor.save
      session[:professor_id] = @professor.id
      redirect_to professors_path
    else
      render :new
    end

    def home
      render(:home)
    end
    
    def mycourses
      render(:mycourses)
    end
  end

  private
  def professor_params
    params.require(:professor).permit(:name, :subject, :username, :password, :pass_confirmation)
  end

end
