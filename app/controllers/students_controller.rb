require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: [:show,:activate]
  
  def index
    @students = Student.all
  end

  def show
  end
  
  def activate
    
    if @student.active == false
      @student.active = true
    else
      @student.active = false
    end
      @student.save
      
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
    
end