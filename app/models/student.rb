class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activated
    if self.active == false
      return 'This student is currently inactive.'
    else
      return 'This student is currently active.'
    end
  end
end
