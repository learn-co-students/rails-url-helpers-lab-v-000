class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student
    if @student.active
      @student.update(active: false)
      @student.save
    else
      @student.update(active: true)
      @student.save
    end

    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
      if @student.active
        @status = "active"
      else
        @status = "inactive"
      end
    end

end