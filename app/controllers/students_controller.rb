class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate, :update]

  def index
    # byebug
    @students = Student.all
  end

  def show
  end

  def activate
  end

  def update
    byebug
    @student.active = params["student"]["active"]
    @student.save
    redirect to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
