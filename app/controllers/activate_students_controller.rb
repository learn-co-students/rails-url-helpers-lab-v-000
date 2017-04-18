class ActivateStudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
    @student.active ? @student.active = false : @student.active = true
    @student.save
    redirect_to "/students/#{@student.id}"
  end

end
