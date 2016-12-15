class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
  	if self.active 
  		self.active = false
  	else
  		self.active = true
  	end
  	self.active
  end
end