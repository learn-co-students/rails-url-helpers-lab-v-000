class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate_student
    s = Student.find(params[:id])
    s.active = s.active ? false : true
    s.save
    redirect_to student_path(s)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
