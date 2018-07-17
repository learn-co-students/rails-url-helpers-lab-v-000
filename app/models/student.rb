class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active
    self.status == 1
  end

  def active=(boolean)
    if boolean
      self.status = 1
    else
      self.status = 0
    end
  end
end
