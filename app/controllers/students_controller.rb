class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student

  end

  def activate
    # look for a student and then check if they are active or inactive
    # then change their status to inactive or active
    set_student
    if @student.active == false
      @student.active = true
      @student.save
    else
      @student.active = false
      @student.save
    end
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
