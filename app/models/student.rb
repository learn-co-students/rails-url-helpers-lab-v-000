class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

def activate
  @student = Student.find(params[:id])
  @student.active = !@student.active
  @student.save
end



end
