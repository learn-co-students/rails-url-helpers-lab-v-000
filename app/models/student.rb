class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def status
    if self.active == false
      @status = "This student is currently inactive."
    else
      @status = "This student is currently active."
    end
  end
end
