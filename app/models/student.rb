class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_phrase
    if active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

  def active_action
    active ? "Deactivate" : "Activate"
  end
end
