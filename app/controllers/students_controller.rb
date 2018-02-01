class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show

  end
  def activate
      @student = set_student
      @student.active = !@student.active  #we want the boolean of the attribute active to be switched
      @student.save
      redirect_to student_path(@student)
      #rails like redirect_to not just redirect
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
