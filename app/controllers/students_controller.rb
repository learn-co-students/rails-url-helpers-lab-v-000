class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    student = Student.find(params[:id])
    student.active = !student.active
    student.save
    # yes, you can use route helpers in controllers
    # must now use redirect_to (Sinatra allowed redirect only)
    redirect_to student_path(student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end