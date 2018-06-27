class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    if @student.active == false
        return 'inactive'
    else
        return 'active'
    end
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == false
        @student.active = true
        return 'active'
    else
        @student.active = false
        return 'inactive'
    end
    @student.save
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
