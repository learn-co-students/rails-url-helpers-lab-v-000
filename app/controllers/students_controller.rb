class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def activate
    set_student
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private

  def set_student
    @student = Student.find_by(id:params[:id])
  end

end
