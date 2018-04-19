class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  before_action :status, only: [:show]

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student.toggle!(:active)
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def status
      if @student.active
        @status = "active"
      else 
        @status = "inactive"
      end
    end
end