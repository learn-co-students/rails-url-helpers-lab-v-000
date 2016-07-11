class Student < ActiveRecord::Base
	validates :active, presence: false
	
  def to_s
    self.first_name + " " + self.last_name
  end
end