class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def status
    if self.active == false
      "This student is currently inactive."
    else
      "This student is currently active."
    end
  end

  def activate_student_path
    if self.active == false
      self.status = true
    end
  end
end
