class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def active
<<<<<<< HEAD
    # @student = Student.find(params[:id])
    # if @student.active
    #   @student.update(active: false)
    # else
    #   @student.update(active: true)
    # end
=======
    @student = Student.find(params[:id])
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
>>>>>>> 0f0cd2d30514ba10ee841285cff3ed335f80e438
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
