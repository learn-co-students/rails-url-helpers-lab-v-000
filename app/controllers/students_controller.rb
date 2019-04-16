class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :active]
  
  def index
    @students = Student.all
  end

  def show
  end

  def active
    @student.active ? @student.active = false : @student.active = true
    @student.save
    redirect_to action: "show", id: params[:id]
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end