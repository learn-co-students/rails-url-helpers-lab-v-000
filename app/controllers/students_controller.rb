class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    if @student.active == false 
      @message = "This student is currently inactive."
    elsif @student.active == true
      @message = "This student is currently active."
    end
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == true
      @student.active = false
    elsif @student.active == false
      @student.active = true
    end  
    @student.save
    respond_to do |i|
        i.html {redirect_to student_path}
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end