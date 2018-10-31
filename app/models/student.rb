class Student < ActiveRecord::Base
  def to_s
	  unless self.nil?
		self.first_name + " " + self.last_name
	  end
  end
end
