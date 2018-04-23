class Student < ActiveRecord::Base
  after_initialize :set_defaults

  def to_s
    self.first_name + " " + self.last_name
  end

  private

    def set_defaults
      self.active = false if self.active.nil?
    end
end
