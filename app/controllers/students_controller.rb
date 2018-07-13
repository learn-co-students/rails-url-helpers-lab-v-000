class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show

    @student = Student.find_by(params[:id])

  end

  def activate

    @student = Student.find_by(params[:id])

    @student = @student.toggle_active
    # binding.pry
    redirect_to student_path(@student)
    # redirect_to "/students/#{@student.id}"

  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
