class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate, :update]
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student.active = !@student.active 
    @student.save
    redirect_to student_path(@student)
  end



  def update
    @student.active = !@student.active 
    @student.save
    render :"students/show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
