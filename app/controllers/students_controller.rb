class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    # if @student.active.eql?(true)
    #   @student.update(active: false)
    # else
    #   @student.update(active: true)
    # end
    @student.active = !@student.active
    @student.save
    redirect_to student_url(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
