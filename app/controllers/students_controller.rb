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
    toggle_active
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def toggle_active
      @student = set_student
      @student.active = !@student.active
      @student.save
    end
end