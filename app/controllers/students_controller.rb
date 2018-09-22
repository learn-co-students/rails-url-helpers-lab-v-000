class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end


    def set_student
      @student = Student.find(params[:id])
      @student.activate
      redirect_to action: "show", id: params[:id]
    end
end
