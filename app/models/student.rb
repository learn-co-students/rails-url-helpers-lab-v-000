class Student < ActiveRecord::Base
  after_initialize :active_init

  def active_init
    self.active ||= false
  end

  def status
    if self.active == false || self.active == "f"
      "inactive"
    elsif self.active == true || self.active == "t"
      "active"
    end
  end

  def toggle
    if self.active == false || self.active == "f"
      self.active = true
    elsif self.active == true || self.active == "t"
      self.active = false
    end
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end
