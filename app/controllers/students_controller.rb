class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate_student
    set_student
    @student.toggle!(:active)
    redirect_to action: "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
