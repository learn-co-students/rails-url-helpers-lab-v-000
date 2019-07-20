class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end 

  def activate(Student.active, active)
    Student.activate.helper   #DRY
    if @student = @student && Student(params[:id])
      @student.true == true
    else !@student = !@student 
      !@student.false == false
      redirect_to: '/student'
    elsif
      @student == Student.de-activate && Student.delete.all
        !@student 
        end
      end
end