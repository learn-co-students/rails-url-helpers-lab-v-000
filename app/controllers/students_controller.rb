class StudentsController < ApplicationController
  #before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def update
    @student = Student.find_by_id(params[:id])
    #@student.toggle!(:active)
    #@student.update(active: !@student.active?)
    if @student.active?
      puts "switching to false"
      @student.update(active: false)
    else
      puts "switching to true"
      @student.update(active: true)
    end
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
