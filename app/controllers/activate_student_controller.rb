class ActivateStudentController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end
end
