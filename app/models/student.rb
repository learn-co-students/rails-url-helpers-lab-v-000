class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end

  def active?
    self.active != true ? "inactive" : "active"
  end

  def toggle
    self.active = !self.active
    self.save
  end

end
