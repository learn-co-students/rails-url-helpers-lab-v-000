class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activity
    self.active == false ? "inactive" : "active"
  end
end
