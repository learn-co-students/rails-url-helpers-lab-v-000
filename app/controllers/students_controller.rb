class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    set_student
    if @student.active
      "This student is currently inactive."
    else
      "This student is currently active."
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
