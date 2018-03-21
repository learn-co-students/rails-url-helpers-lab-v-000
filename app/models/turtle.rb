class Turtle < ActiveRecord::Base
  def display
    self.name + " is " + self.age.to_s + " years old"
  end
end
