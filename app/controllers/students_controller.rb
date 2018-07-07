class StudentsController < ApplicationController
  before_action :set_student, :set_status, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  #def
  #end


  private

    def set_student
      @student = Student.find(params[:id])
    end

    def set_status
      #@student.active == false ? @status = "inactive" : @status = "active"
      if @student.active == false
        @status = "inactive"
        @student.active = true
      else
        @status = "active"
        @student.active = false
      end
      @student.save
    end

end
