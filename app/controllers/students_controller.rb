class StudentsController < ApplicationController
  before_action :set_student, :set_status, only: :show

  def index
    @students = Student.all
  end

  def show

  end


  private

    def set_student
      @student = Student.find(params[:id])
    end

    def set_status
      @student.active == false ? @status = "inactive" : @status = "active"
    end

end
