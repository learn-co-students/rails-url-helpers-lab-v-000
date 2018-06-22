class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = set_student
  end

  # def activate
  #   student = params(student[:id]).active
  #   if student.active == true
  #     student.active = false
  #   else
  #     student.active = true
  #   end
  #   show
  # end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
