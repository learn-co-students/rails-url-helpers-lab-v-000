
class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def update
    @student.active = !@student.active
    @student.save
    redirect_to action: 'show', id: @student.id
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end
