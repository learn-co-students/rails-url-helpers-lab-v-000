class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])

  end

  def activate_student
    @student = Student.find(params[:id])
    if @student.active
      @student.update(active: false)
    else
      @student.update(active: true)
    end
    redirect_to "/students/#{@student.id}"
  end



  private

    def set_student
      @student = Student.find(params[:id])
    end
end