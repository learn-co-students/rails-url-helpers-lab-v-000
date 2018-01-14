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
    @student.update(active: !@student.active)
    redirect_to student_path(@student)
  end

  def to_s
    self.first_name + " " + self.last_name
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end
