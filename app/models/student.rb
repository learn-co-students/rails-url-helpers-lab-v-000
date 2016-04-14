class Student < ActiveRecord::Base

  #def initialize(attributes=nil)
   # attr_with_defaults = {:active => false}.merge(attributes)
    #super(attr_with_defaults)
  #end



  def to_s
    self.first_name + " " + self.last_name
  end

end