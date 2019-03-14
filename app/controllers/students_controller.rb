class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
    @student.active ? @status = 'active' : @status = 'inactive'
  end

  def activate
    @student = Student.find_by_id(params[:id])
    @student.toggle_active_status
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
