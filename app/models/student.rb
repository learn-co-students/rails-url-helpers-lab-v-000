class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def toggle_active
    if self.active == false
      self.active = true
      self.save
    else
      self.active = false
      self.save
    end
    self
  end
end
