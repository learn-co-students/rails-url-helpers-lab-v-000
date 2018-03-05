class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def is_active?
    if self.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

  def activate
    self.active = true
    self.save
  end

  def deactivate
    self.active = false
    self.save
  end
end
