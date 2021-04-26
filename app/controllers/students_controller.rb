class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student.reverse_status
    redirect_to :student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
