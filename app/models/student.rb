class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def student_status
     if self.active
       "This student is currently active."
     else
       "This student is currently inactive."
     end
   end
end
