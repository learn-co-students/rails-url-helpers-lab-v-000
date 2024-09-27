class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  # def show
    # Don't even need this here if there's no code in my action!!!
  # end

  def activate
    @student.toggle
    @student.save
    redirect_to student_path(@student)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end