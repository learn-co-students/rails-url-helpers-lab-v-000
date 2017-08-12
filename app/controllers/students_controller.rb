class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    if set_student.active == true
      set_student.active = false
    else
      set_student.active = true
    end
    set_student.save
    render 'show'
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end