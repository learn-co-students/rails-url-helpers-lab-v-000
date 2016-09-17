class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    s = Student.find_by(id: params[:id])
    s.active = !s.active
    s.save
    redirect_to student_path(s)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
