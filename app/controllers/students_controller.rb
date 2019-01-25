require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
    #binding.pry
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == true
      @student.active = false
    else
      @student.active = true
    end
    @student.save
    redirect_to student_path(@student)
    #render '/students/#{@student.id}'
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
