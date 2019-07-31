class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def activate
  end

  def update
    binding.pry
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
