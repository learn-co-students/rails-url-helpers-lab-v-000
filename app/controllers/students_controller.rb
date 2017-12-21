class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    # binding.pry
    @student = set_student
  end

  def activate
    @student = set_student
    # @student.toggle :active
    # binding.pry
    @student.toggle(:active)
    @student.save
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
