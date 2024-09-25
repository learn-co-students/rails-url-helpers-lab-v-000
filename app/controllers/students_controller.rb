class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :activate]

  def index
    @students = Student.all
  end

  def show
  end

  def edit
  end

  def activate
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
