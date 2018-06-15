class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
    @active_status = @student.active ? 
      "active" : "inactive"
  end

  def activate
    @student.active = !(@student.active)
    @student.save

    redirect_to action: "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end