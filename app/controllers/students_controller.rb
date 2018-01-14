class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @status = translate_active
  end

  def activate
    set_student.active = !@student.active
    @student.save
    redirect_to student_url(@student)
  end

  private

    def set_student
      @student ||= Student.find(params[:id])
    end

    def translate_active
      set_student.active ? "active" : "inactive"
    end
end
