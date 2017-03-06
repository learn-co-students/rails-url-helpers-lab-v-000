class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
    @active = "This student is currently #{ @student.active ? "active" : "inactive" }."
  end

  def activate
    @student = Student.find_by_id(params[:id])
    if @student.active
      @student.active = false
    elsif !@student.active
      @student.active = true
    end
    @student.save
    redirect_to action: "show", id: params[:id]
  end


  private

    def set_student
      @student = Student.find_by_id(params[:id])
    end
end
