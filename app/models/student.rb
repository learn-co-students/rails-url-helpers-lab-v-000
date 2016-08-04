class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  # def active?
  #   if self.active?
  #     puts  "This student is currently active."
  #   else
  #     puts "This student is currently inactive."
  #   end
  # end
end