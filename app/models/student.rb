class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def toggle_active_status
    self.active = !self.active
  end

  def active_or_inactive?
    return "active" if self.active == true
    return "inactive" if self.active != true
  end

end
