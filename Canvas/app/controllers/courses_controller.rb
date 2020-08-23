class CoursesController < ApplicationController

  before_action :find_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
    render :show
  end

  def new
    @course = Course.new
  end

  def edit
    render :edit
  end

  def update
    @course.update(course_params)
    redirect_to course_path(@course)
  end

  def create
    Course.create(course_params)
    redirect_to professor_mycourses_path(current_user[:id])
  end
  
  def destroy
    Course.destroy(params[:id])
    redirect_to professor_mycourses_path(current_user[:id])
  end
  private

  def find_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :description, :setting, :semester, :credit, :college_id, :professor_id)
  end

end
