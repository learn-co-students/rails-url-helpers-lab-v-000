class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def edit
    @student = Student.find_by_id(params[:id])
    new_status = !@student.active
    @student.active = new_status
    @student.save
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end