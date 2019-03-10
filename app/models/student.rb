class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def reload
    self.active = !self.active
  end
end
