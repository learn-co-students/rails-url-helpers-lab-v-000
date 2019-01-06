class Student < ActiveRecord::Base

  attr_accessor :active

  def to_s
    self.first_name + " " + self.last_name
  end

  def active(x = false)
    self.active = x
  end
end