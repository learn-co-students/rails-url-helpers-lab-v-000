class Student < ActiveRecord::Base
  
  # After initialization, set default values
  after_initialize :set_default_values
    
  def set_default_values
    # Only set if 'active' attribute IS NOT set
    self.active ||= "false"
  end 

  def to_s
    self.first_name + " " + self.last_name
  end
end