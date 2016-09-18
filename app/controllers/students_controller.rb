class StudentsController < ApplicationController
  before_action :set_student, only: :show # --A call back
  # --we can pass in an only option, selecting which of the seven RESTful routes we care about. In this case, we only care about the show action.

  def index
    @students = Student.all
  end

  def show
  end

  def active
    @student = Student.find_by_id(id)
    if !@student.active
      @student.active = true
      @student.save
      redirect_to student_path(@student)

    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
