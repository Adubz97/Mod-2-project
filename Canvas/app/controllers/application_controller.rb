class ApplicationController < ActionController::Base


  helper_method :p_logged_in?,:s_logged_in?, :current_user

  def p_logged_in?
    !!session[:professor_id]
  end

  def s_logged_in?
    !!session[:student_id]
  end

  def current_user
    if p_logged_in?
      return Professor.find(session[:professor_id])
    elsif s_logged_in?
      return Student.find(session[:student_id])
    else 
      return nil
    end
  end

end

