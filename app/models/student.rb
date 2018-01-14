class Student < ActiveRecord::Base

  after_initialize :set_defaults, unless: :persisted?

  def set_defaults
    self.active = false if self.active.nil?
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end
