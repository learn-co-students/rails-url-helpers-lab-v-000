class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    set_student

    if @student.active == true
      @student.update(active: false)
    elsif @student.active == false 
      @student.update(active: true)
    end

    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end