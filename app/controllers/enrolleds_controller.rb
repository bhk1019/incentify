class EnrolledsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @course = Course.find(params[:course_id])
    @enrolled = Enrolled.new
  end
  
  def create
    @course = Course.find(params[:course_id])
    @enrolled = @course.enrolleds.create(enrolled_params)
    redirect_to course_path(@course)
  end

  def add_point
    @course = Course.find(params[:course_id])
    @enrolled = @course.enrolleds.find_by_id(params[:enrolled_id])
    @enrolled.pointsearned += 1
    @enrolled.save
    redirect_to course_path(@course)
  end

  def subtract_point
    @course = Course.find(params[:course_id])
    @enrolled = @course.enrolleds.find_by_id(params[:enrolled_id])
    @enrolled.pointsearned -= 1
    @enrolled.save
    redirect_to course_path(@course)
  end


  private

  def enrolled_params
    params.require(:enrolled).permit(:firstname, :lastname, :pointsearned)
  end
end
