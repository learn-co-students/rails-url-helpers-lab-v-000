class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate_student
    student = set_student
    if student.active == true
      student.update(active: false)
    else
      student.update(active: true)
    end
    rendor 'students/show'
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
