class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    if set_student.active 
      @active_status = "active"  
    else
      @active_status = "inactive"  
    end
    
  end



  private

    def set_student
      @student = Student.find(params[:id])
    end
end
