class StudentsController < ApplicationController
  def new
  end
  
  private
  def student_params
    params.require(:student).permit(:total_points, :expended_points, :name)
  end
end
