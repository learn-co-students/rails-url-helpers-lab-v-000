class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_status
    self.active == false ? "inactive" : "active"
  end

  def reverse_status
    self.active == false ? self.update(active: true) : self.update(active: false)
  end
end
