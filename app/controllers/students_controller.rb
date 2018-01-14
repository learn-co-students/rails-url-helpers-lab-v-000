class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
      if @student.active
        @student.active = false
        @student.save
      else
        @student.active = true
        @student.save
      end
    redirect_to student_path(@student)
    end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
