class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def status
    self.active ? "This student is currently active." : "This student is currently inactive."
  end
end
