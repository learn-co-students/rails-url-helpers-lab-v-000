class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id]) #find student
    @student.active = !@student.active #reverse activation status
    @student.save #save changes to db
    redirect_to student_path(@student) #redirect to student show page
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
