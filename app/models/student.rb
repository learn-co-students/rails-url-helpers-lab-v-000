class Student < ActiveRecord::Base

  after_initialize :boo_fix

  def boo_fix
    self.active = false if self.active.nil?
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end