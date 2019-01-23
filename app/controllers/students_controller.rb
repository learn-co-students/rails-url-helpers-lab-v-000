class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def new 
    @student = Student.new 
  end 
  
  def create
  end 
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end
  
  def activate
    @student = Student.find(params[:id])
    @student.toggle :active
    @student.save
    redirect_to "/students/#{@student.id}"
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end