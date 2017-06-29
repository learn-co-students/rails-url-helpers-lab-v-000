class Student < ActiveRecord::Base

  def status
    self.active ? "This student is currently active." : "This student is currently inactive."
  end
  def to_s
    self.first_name + " " + self.last_name
  end

end
