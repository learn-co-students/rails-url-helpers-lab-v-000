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
  end

  def update
    @student = set_student
    @student.update(params.require(:student).permit(:active))
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
