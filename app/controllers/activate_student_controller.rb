class ActivateStudentController < ApplicationController
    before_action :set_student, only: :show

  def show
    #bypasses model's validations
    @student.toggle!(:active)
    redirect_to @student
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
