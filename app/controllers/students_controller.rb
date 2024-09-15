class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    student_path (@student)
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end
  
  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
      
          if @student.save
             redirect_to student_path(@student)
          else
             erb :"/students/show.html"
          end
      end
      

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
