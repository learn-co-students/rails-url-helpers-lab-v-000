class StudentsController < ApplicationController
  before_action :set_student, only: :show
  before_action :toggle_active, only: :activate
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def toggle_active
      @student = Student.find(params[:id])
      @student.active = true
    end
end