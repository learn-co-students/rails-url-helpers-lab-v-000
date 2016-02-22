require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def toggle_activate
    set_student
    @student.toggle_activate
    @student.save
    redirect_to action: :show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
