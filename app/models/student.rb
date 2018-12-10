class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  private

  def active_indicator
    if !active
      '-This student is currently inactive.'
    else
      '-This student is currently active.'
    end
  end

end
