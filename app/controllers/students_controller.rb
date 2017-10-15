require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def edit
    set_student.active ? set_student.update(active: false) : set_student.update(active: true)
    redirect_to action: 'show', id: set_student.id
  end

  # def activate
  #   @student = Student.find(params[:id])
  #   @student.active = !@student.active
  #   @student.save
  #   redirect_to student_path(@student)
  # end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
