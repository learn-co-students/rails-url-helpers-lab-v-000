class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end


    def activate
      @student = Student.find(params[:id])
      @student.activate
      @student.save
      # redirect_to student_path(@student)
      redirect_to action: 'show', id: @student.id
    end
end
