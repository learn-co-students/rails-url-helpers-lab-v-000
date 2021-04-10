class ActivateStudentController < ApplicationController

  def show
    @student = Student.find(params[:id])

    case @student.active
        when false
            @student.active = true
        when true
            @student.active = false
    end   
    @student.save   
    redirect_to "/students/#{@student.id}"
  end 
end