class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def activate
    student=Student.find(params[:id])
    if student.active==true then student.active=false else student.active=true end
    student.save
    redirect_to "/students/#{student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
