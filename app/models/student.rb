class Student < ActiveRecord::Base

  def activate_student
    self.active ? self.active = false : self.active = true
    self.save
  end

  def status
    self.active ? "This student is currently active." : "This student is currently inactive."
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end