class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end

  def default_value
          @student.active = false
  end
end
