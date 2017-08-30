class StudentsController < ApplicationController
  #before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    #binding.pry
  end

  def active
    @student = Student.find(params[:id])
    # so, I drew a map from a url to the students controller and the active action
    # the student active attribute is default to  false, so
    @student.active = !@student.active
    @student.save
    # okay, the error is saying that there is no template.
    # so now route them to an Active page?
    redirect_to student_path(@student)
    #binding.pry
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
