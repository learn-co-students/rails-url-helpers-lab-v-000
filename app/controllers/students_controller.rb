class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate_student(id)
    @student = Student.find(id: id)
    @student.status = params[:status]
    @student.update
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
