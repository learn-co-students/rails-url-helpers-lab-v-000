class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  # Toggles the student's active status
  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active # Sets the new active status as the opposite of what it is.
    @student.save

    redirect_to student_path(@student) # Redirects to the student show page
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end