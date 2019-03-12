class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end

  private

  def activated?
  	!!(self.active)
  end
end