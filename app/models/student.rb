class Student < ActiveRecord::Base
  after_initialize :init

  def init
    self.active ||= false
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end
