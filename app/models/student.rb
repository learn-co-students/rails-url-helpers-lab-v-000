require 'pry'

class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def reload
    self.active ? (self.active = false) : (self.active = true)
  end
end
