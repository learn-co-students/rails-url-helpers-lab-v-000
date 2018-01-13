class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def status
    self.active ? "active" : "inactive"
  end

  def activate
    if self.active
      self.active = false
    else
      self.active = true
    end
    self.save
  end
end
