class Student < ActiveRecord::Base
  after_initialize :set_defaults

  def to_s
    self.first_name + " " + self.last_name
  end

  def active? 
    !!self.active 
  end

  def activate!
    self.active = true
    self.save
  end

  def deactivate!
    self.active = false
    self.save
  end

  def toggle_active!
    if self.active?
      self.deactivate!
    else
      self.activate!
    end
  end

  private
  def set_defaults
    self.active ||= false
  end
end
