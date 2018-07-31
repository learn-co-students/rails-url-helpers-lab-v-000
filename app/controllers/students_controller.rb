class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @students = Student.all
  end

  private

    def set_student
      @student = Student.find(params[:id])
      @student.active = !@student.active
      @student.save
      redirect_to_student_path(@student)
    end
end
