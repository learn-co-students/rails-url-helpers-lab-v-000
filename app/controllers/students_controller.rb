class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @active = nil
    set_student
    if @student.active == FALSE
      @active = "This student is currently inactive."
    else @active = "This student is currently active."
    end
  end

  def activate
    set_student
    if @student.active == FALSE
      @student.update(:active => TRUE)
    else @student.update(:active => FALSE)
    end
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
