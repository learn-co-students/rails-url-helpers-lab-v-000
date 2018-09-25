class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    if self.active == true
      self.active = false
    else
      self.active = true
    end
  end
end
