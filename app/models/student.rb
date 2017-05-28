class Student < ActiveRecord::Base
  after_initialize :init

  def to_s
    self.first_name + " " + self.last_name
  end

  def init
    self.active ||= false
  end

  def active_status
    if self.active
      @active_message = "This student is currently active."
    else
      @active_message = "This student is currently inactive."
    end
  end
end
