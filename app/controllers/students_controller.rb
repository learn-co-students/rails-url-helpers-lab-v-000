
class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate] 
  
  def index
    @students = Student.all
  end

  def show
    @status = "This student is currently "
    
    if @student.active
      @status += "active."
    else
      @status += "inactive."
    end
  end

  def activate
    @student.toggle!(:active)
    render "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
    
end