class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit]
  
  def index
    @students = Student.all
  end

  def show
  end

  def edit
    if @student.active == false
      @student.active = true
      @student.save
    elsif @student.active == true
      @student.active = false
      @student.save
    end
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end