class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = set_student
  end

  def activate
    @student = set_student
    if @student.active
      @student.active = false
      @student.save
      redirect_to "/students/#{@student.id}"
    else
      @student.active = true
      @student.save
      redirect_to "/students/#{@student.id}"
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
