class SessionsController < ApplicationController

  def login_student
    render(:login1)
  end

  def login_professor
    render(:login2)
  end

  def process_login_student
    @student = Student.find_by(username: params[:username])
    if @student 
      session[:student_id] = @student.id
      redirect_to student_path(@student)
    else 
      flash.now[:login_error] = "No account found with that username"
      render :login1
    end
  end

  def process_login_professor
    @professor = Professor.find_by(username: params[:username])
    if @professor 
      session[:professor_id] = @professor.id
      redirect_to professor_path(@professor)
    else 
      flash.now[:login_error] = "No account found with that username"
      render :login2
    end
  end

  def logout
    session.clear
    redirect_to home_path
  end

end
