class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active?
    self.active == true
  end

  def status
    if self.active?
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

  def switch_status
    if self.active == true
      self.update(active: false)
      self.save
    else
      self.update(active: true)
      self.save
    end
  end

end
