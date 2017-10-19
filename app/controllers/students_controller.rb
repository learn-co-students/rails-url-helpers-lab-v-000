class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @status = @student.active == true ? "active" : "inactive"
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
      # ^^ available due to this in my routes: resources :students, only: :show 
  end

  # def activate # my NOOB way.
  #   @student = Student.find(params[:id])
  #   if @student.active == false
  #     @student.active = true
  #   else
  #     @student.active = false
  #   end
  #   @student.save
  #   redirect_to action: "show", id: @student.id
  # end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
