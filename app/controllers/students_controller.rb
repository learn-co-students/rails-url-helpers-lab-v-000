require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def edit
    @student = set_student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end