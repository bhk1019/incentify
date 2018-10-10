class CoursesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new]

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
  
  def show
    @course = Course.find(params[:id])
  end

  def randomly_select_student
    @course = Course.find(params[:course_id])
    @random_student = @course.enrolleds.sample(1)
    render :json => @random_student
  end

  private

  def course_params
    params.require(:course).permit(:title, :course_id, :teacher_id)
  end

end
