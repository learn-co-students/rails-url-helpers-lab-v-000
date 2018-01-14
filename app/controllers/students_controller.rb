class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
    if @student.active == false
      @status = "This student is currently inactive."
    else
      @status = "This student is currently active."
    end
  end

  def activate
    set_student
    if @student.active == false
      @student.active = true
      @status = "This student is currently active."
    else
      @student.active = false
      @status = "This student is currently inactive."
    end
    @student.save
    redirect_to action: "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
