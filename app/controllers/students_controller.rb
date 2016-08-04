class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    # toggle active status
    @student.toggle_active_status
    @student.save
    redirect_to action: "show", id: @student.id
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
