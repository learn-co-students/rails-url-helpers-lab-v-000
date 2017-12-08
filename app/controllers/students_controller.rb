class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :active]

  def index
    @students = Student.all
  end

  def show
  end

  def active
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
