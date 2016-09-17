class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
    # @student = Student.find(params[:id]) set_student does this for us
  end

  def activate
    @student.active = !@student.active # whatever it is, make it the opposite
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end