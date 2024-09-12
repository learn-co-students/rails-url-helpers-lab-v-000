class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = set_student
    if @student.active == false
      "This student is current inactive."
    else "This student is currently active."
    end
  end

  def activate
    @student = set_student
    if @student.active == false
      @student.active = true
      @student.save
    else @student.active == true
    end
    redirect_to student_url
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end