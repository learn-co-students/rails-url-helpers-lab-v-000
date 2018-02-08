class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  before_action :toggle_active, only: :activate
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def toggle_active
      @student.active = @student.active ? false : true
      @student.save
    end
end