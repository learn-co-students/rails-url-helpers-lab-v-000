class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def to_s
    @student = Student.find(params[:id])
    @student.first_name + " " + @student.last_name
  end

  def activate_student
    toggle_activation
    redirect_to student_path(@student)
  end

  private

    def toggle_activation
      @student = Student.find(params[:id])
      # @student.active ? false : true
      @student.toggle!(:active)
    end

    def set_student
      @student = Student.find(params[:id])
    end
end
