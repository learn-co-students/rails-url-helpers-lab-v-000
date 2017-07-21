class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def status
    if self.active == true
      "active"
    else
      "inactive"
    end
  end

  def toggle_active
    self.toggle!(:active)
  end
end
