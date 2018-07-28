class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate  #page call, not page "as" [activate vs activate_student]
    #cause toggle of .active attr using a method
    # @student = Student.find(params[:id])
    set_student.active_toggle
    # @student.active = !@student.active
    # @student.active_toggle
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
