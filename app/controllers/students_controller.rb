class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :toggle_active]
  before_action :status, only: [:show]
  
  def index
    @students = Student.all
  end

  def show
  end

  def toggle_active
    @student.toggle!(:active)
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def status
      if @student.active == false
        @status = "inactive"
      else 
        @status = "active"
      end
    end
end