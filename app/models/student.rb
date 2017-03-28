class Student < ActiveRecord::Base
  # before_save :default_values

  def to_s
    self.first_name + " " + self.last_name
  end


  # def active
  #   binding.pry
  #   self.active
  # end
end
