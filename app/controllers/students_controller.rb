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

  def activate_student
    set_student
    #!set_student.active

    #set_student.save

  end



  private

    def set_student
      @student = Student.find(params[:id])
    end
end
