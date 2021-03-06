class SessionsController < ApplicationController

  def login_student
    @student_form_token = form_authenticity_token
    render(:login1)
  end

  def login_professor
    @professor_form_token = form_authenticity_token
    render(:login2)
  end

  def process_login_student
    @student = Student.find_by(username: params[:username])
    if @student && @student.authenticate(params[:password])
      session[:student_id] = @student.id
      redirect_to student_home_path(@student)
    else 
      flash.now[:login_error] = "No account found with those credentials"
      render :login1
    end
  end

  def process_login_professor
    @professor = Professor.find_by(username: params[:username])
    if @professor && @professor.authenticate(params[:password])
      session[:professor_id] = @professor.id
      redirect_to professor_home_path(@professor)
    else 
      flash.now[:login_error] = "No account found with those credentials"
      render :login2
    end
  end

  def logout
    session.clear
    redirect_to home_path
  end

end
