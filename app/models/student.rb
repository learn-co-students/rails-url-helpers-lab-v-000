class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def active_to_s
    self.active ? "active" : "inactive"
  end
  
  def toggle_active_status
    self.active ? self.update_attribute(:active, false) : self.update_attribute(:active, true)
  end
end