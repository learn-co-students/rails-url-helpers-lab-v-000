class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  # def activate
  #   self.active = !self.active
  #   self.save
  # end

end
