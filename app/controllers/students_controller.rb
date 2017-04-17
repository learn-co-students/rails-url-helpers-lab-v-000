class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def active
    set_student
    @student.activate_student
    @student.save
    #redirect_to "/students/#{@student.id}" - hardcoded 
    redirect_to student_path(@student) # - Route helper
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end