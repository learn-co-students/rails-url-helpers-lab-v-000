class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def active
    @student = Student.find(params[:id])
    @student.toggle(:active).save
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
