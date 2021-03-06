class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student =Student.new(student_params)
    if @student.valid?
      @student.save
      session[:student_id] = @student.id
      redirect_to student_home_path(@student)
    else
      render :new
    end
  end

   def home
      render(:home)
    end
    
    def mycourses
      render(:mycourses)
    end

  private
  
  def student_params
    params.require(:student).permit(:name, :major, :username, :password, :pass_confirmation)
  end

end
