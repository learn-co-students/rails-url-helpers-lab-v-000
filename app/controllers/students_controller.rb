class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    student_status
    @student.update(active: !@student.active)
    redirect_to "/students/#{@student.id}"
  end

  private

    def student_status
      @student = Student.find(params[:id])
    end
end
