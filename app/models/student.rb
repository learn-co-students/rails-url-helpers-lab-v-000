class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end

  def active 
    self.status == 0 ? false : true
  end

  def active=(state)
    state ? self.status = 1 : self.status = 0
    self.save
  end
end