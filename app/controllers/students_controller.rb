class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
     if params[:status] == "active"
          render :action => "show"
        else
          render :action => "show"
        end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    #   if params[:status] == "active"
    #     @student.active = true
    #     @student.save
  #      @students = Student.inactive
  #      render :action => "show"
  #    else
  #      @students = Student.active
  #      render :action => "show"
    end

    def activate

    end


end
