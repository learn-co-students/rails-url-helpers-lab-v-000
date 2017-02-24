class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def status
    active == false ? 'inactive' : 'active'
  end

  def change_status
    active == false ? update(active: true) : update(active: false)
  end
end
