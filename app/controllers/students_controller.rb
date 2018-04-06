class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student.update(active: !set_student.active)
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
