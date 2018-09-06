require 'pry'
class StudentsController < ApplicationController
  #before_action :set_student, only: :show

  def index
    @students = Student.all

  end

  def show

    @student = Student.find(params[:id])
  end

  private

    def set_student
      #binding.pry
      @student = Student.find(params[:id])
    end
end
