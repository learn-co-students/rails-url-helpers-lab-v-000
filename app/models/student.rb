class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_status
    if set_student.active == false
      @active_status = "inactive"
    else
      @active_status = "active"
    end
    @active_status
  end
  
end
