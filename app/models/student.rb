class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end

  def activate_student
    if self.active
      self.active = true
    else
      self.active = false
    end
    #self.active ? self.active = true : self.active = false
    self.save
  end

  def status
    if self.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end
end