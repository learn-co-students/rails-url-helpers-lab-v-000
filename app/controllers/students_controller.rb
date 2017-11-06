class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    if @student.active == false
      @message = "This student is currently inactive."
    else
      @message = "This student is currently active."
    end
  end

  def activate_student
    @student = Student.find(params[:id])
    if @student.active == true #Should mark an active student as inactive
      @student.active = false
    else
      @student.active = true #Should mark an inactive student as active
    end
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
