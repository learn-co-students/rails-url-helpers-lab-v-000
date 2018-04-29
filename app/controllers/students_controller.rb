
require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
    if @student.active == true
      @status = "active"
    else
      @status = "inactive"
    end
    # @student = Student.find(params[:id])
  end

  def activate
      set_student
      update_student

    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def update_student
      set_student
            if @student.active == true
        @student.active = false
      else
        @student.active = true
      end
      @student.save
    end

end
