class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_phrase
    active ? "This student is currently active." : "This student is currently inactive."
  end

  def active_action
    active ? "Deactivate" : "Activate"
  end
end
