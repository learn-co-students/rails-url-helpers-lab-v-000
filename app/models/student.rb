class Student < ActiveRecord::Base
  after_initialize :init

  def to_s
    self.first_name + " " + self.last_name
  end

  private

    def init
      self.active ||= false
    end
end
