class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate, :toggle_state]

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student.toggle!(:active)
    redirect_to action: "show", id: params[:id]
  end

  def toggle_state
    @student.toggle!(:active)
    redirect_to action: "show", id: params[:id]
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
