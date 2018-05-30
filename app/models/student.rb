class Student < ActiveRecord::Base

  # def initialize(params)
  #   super
  #   self.active = false if self.active.nil?
  # end

  def to_s
    self.first_name + " " + self.last_name
  end

end
