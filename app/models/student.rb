class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def status
    if self.active == false
      "inactive"
    else
      "active"
    end
  end

  def activate
    if self.active == false
      self.active = true
      self.save
    elsif self.active == true
      self.active = false
      self.save
    end
  end

end
