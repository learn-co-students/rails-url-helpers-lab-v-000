class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  
  after_initialize do |student|
    if student.active == nil
      student.active = false
    end
  end
end
