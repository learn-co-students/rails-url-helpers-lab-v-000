class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    # if @student.active
    #   @student.active = false
    # else
    #   @student.active = true
    # end
    # @student.save

    # A nice way to refactor the above statement, thanks to 
    # https://stackoverflow.com/questions/40620649/how-to-toggle-a-boolean-attribute-in-a-controller-action#answer-40620772
    @student.update(active: !@student.active)

    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end