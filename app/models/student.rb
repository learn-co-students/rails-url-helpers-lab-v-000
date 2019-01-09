class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def status
    if @student.active == false
      self.status = "inactive"
    else
      self.status = "active"
    end
  end
end
