class RegistrationsController < ApplicationController

  def index
    @registrations = Registration.all
  end

  def show
    @registration = Registration.find(params[:id])
  end

  def new
    @registration = Registration.new
    render(:new)
  end

  def create
    Registration.create(registration_params)
    redirect_to student_mycourses_path(current_user[:id])
  end

   def destroy
    Registration.destroy(params[:id])
    redirect_to student_mycourses_path(current_user[:id])
  end
  private

  def registration_params
    params.require(:registration).permit(:registration_number, :student_id, :course_id)
  end

end
