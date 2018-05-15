class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def edit
    set_student
    @student.update(active: !@student.active)
    redirect_to student_path(@student)
  end

  #def update
  #  set_student
  #  if params[:active] == 'true'
  #    @student.update(active: true)
  #  else
  #    @student.update(active: false)
  #  end
  #  @student.save
  #  redirect_to student_path(@student)
#  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
