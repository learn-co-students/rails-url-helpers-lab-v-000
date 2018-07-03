class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    if @student.active == true
      @message = "This student is currently active."
    else
      @message = "This student is currently inactive."
    end
  end
  
  def activate
    set_student
    if @student.active == true
      @student.active = false
    else
      @student.active = true
    end
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end