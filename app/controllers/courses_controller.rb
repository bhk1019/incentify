class CoursesController < ApplicationController
  before_action :authenticate_user!

  def new
    @course = Course.new
  end

  def create
    @teacher = Teacher.find_by(:id => current_user.id)
    @course = Course.create(course_params)
    @teacher.courses << @course
    @course.save!
    redirect_to teacher_path(@teacher)
  end

  private

  def course_params
    params.require(:course).permit(:title)
  end

end
