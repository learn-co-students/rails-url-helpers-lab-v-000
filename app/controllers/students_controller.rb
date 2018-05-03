require 'rack-flash'

class StudentsController < ApplicationController

  use Rack::Flash

  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def active 
    @student = Student.find(params[:id])
    if @student.active == true
      flash[:message] = "This student is currently active."
    else
      flash[:message] = "This student is currently inactive."
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def active 
      if @student.active == true
        flash[:message] = "This student is currently active."
      else
        flash[:message] = "This student is currently inactive."
      end
    end
end