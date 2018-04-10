class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def is_active?
    if self.active == true
      return "active"
    else
      return "inactive"
    end
  end

end
