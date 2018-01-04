class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student
    if @student.active == true
      @student.active = false
    else
      @student.active = true
    end
    redirect_to student_url(@student.id)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def change_active_status
      if @student.active == true
        @student.active == false
      else
        @student.active == true
      end
    end
end
