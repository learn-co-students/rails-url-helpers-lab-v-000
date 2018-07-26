class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all #where("students.active = ?", true)
  end

  def show
    set_student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
