class StudentController < ApplicationController
before_action :set_student, only: [:show, :activate]
  
def show
end


def activate
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
    
end


private
def set_student
    @student = Student.find(params[:id])
end

end#eoc
