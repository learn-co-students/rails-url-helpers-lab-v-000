class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate, :update]

  def index
    # byebug
    @students = Student.all
  end

  def show
  end

  def update
    # byebug
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  def activate
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
