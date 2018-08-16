class ActivateStudentController < ApplicationController

  def activate
      @student = Student.find(params[:id])
      @student.update(active: !@student.active)
    end

end