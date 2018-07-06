class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active
    @active ||= false
  end

  def active=(status)
    @active = status
  end

end
