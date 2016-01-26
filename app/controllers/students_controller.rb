class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    render 'students/index'
  end

  def show
    @student = Student.find(params[:id])
    render 'students/show'
  end

  def activate
      set_student
      @student.active=!(@student.active)
      @student.save
      redirect_to student_url(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end


end