class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
#    binding.pry
      @student = Student.find(params[:id])

      if @student.active == false
          @student_saying = "This student is currently inactive."
      else
          @student_saying =  "This student is currently active."
      end
  end

  def activate
      @student = Student.find(params[:id])

      if @student.active == false
          @student.active == true
          @student_saying =  "This student is currently active."
      else
          @student.active == false
          @student_saying = "This student is currently inactive."
      end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
