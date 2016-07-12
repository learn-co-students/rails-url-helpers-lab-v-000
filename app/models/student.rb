class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    if !self.active
      self.active = true
    else
      self.active = false
    end
  end
end
