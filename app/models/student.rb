class Student < ActiveRecord::Base

  after_initialize :set_defaults, unless: :persisted?


  def to_s
    self.first_name + " " + self.last_name
  end

  def set_defaults
   self.active = false if self.active.nil?
 end
 
end
