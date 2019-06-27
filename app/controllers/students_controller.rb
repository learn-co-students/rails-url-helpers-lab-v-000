require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    #activate automatically gets the path based 
    @student = Student.find_by(id: params[:id])
    @student.active = !@student.active
    @student.save
    #prefixs can be found using rails routes
    #prefix_path(object)
    redirect_to student_path(@student)
    #redirect_to prefix_path(object)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end