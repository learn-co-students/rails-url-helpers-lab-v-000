class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
      @student = Student.find(params[:id])
      if !@student.active
      @student.active = true
      @student.save
      redirect_to "/students/#{@student.id}"
    elsif @student.active = true
      @student.active = false
      @student.save
      redirect_to "/students/#{@student.id}"
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end



end
