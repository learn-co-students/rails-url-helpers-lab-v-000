class Student < ActiveRecord::Base

  def show
    @student = Student.find_by(id: params[:id])
  end
  def to_s
    self.first_name + " " + self.last_name
  end
end
