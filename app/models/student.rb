class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active?
    active ? 'active' : 'inactive'
  end
end
