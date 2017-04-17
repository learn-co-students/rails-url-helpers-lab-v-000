class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

 def active?
 	self.active == false ? "This student is currently inactive." : 
 	"This student is currently active."
 end

 def activate_student
 	if self.active == false
 		self.active = true
 	else
 		self.active = false
 	end
 end

end