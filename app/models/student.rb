class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def toggle_active
    self.active = !self.active
    self.save
  end

  def status
    if self.active
      return "This student is currently active."
    else
      return "This student is currently inactive."
    end
  end
end