class Student < ActiveRecord::Base
  after_initialize :default_values

  def to_s
    self.first_name + " " + self.last_name
  end

  private
  def default_values
    self.active ||= false
  end

end
