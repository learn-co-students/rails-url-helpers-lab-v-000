class Student < ActiveRecord::Base
  after_create :deactivate

  def deactivate
    self.active = false
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end
