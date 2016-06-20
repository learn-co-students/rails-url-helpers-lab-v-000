class StudentsController < ApplicationController
  before_action :set_student, :check_status, only: [:show, :show_and_activate]
  
  def index
    @students = Student.all
  end

  def show
  end

  def show_and_activate
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def check_status
      if @student.active
        @status = "active"
      else
        @status = "inactive"
      end
    end
end