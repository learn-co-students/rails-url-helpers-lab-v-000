class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    # @student = Student.find(params[:id])
    set_student
    if @student.active == true
      @student.active = false
    elsif @student.active == false
      @student.active = true
    end
    @student.save
    # render 'students/show'
    # redirect_to "students/#{@student.id}"
    redirect_to student_path(@student.id)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
