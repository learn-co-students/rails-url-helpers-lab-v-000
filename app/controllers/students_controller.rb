require 'pry'
class StudentsController < ApplicationController


  before_action :set_student, only: :show


  def index
    @students = Student.all
  end

  def show

  end

  def edit
    # binding.pry
    set_student
    if @student.active == true
      @student.active = false
      @student.save
    else
      @student.active = true
      @student.save
    end
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end



end
