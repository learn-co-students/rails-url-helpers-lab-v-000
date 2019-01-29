require 'pry'

class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end

  #def active=(value)
    #binding.pry
  #  if value != false
  #    @active = 1
  #    self.save
  #  end
  #end

  #def active
  #  binding.pry
  #  if @active != 0
  #    return true
  #  end
  #  false
  #end

end
