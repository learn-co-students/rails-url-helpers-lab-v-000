class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show    
    set_student
  end

  def activate_student      
    set_student
    if @student.active == false
      @student.update(active: true)
    elsif @student.active == true
      @student.update(active: false)
    end
    redirect_to (@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end    
end