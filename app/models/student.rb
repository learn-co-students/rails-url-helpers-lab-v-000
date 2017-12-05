class Student < ActiveRecord::Base

  after_initialize :init

  def to_s
    self.first_name + " " + self.last_name
  end

  def init
    self.active = false if self.active.nil?
  end

end
