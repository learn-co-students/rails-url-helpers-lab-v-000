class Student < ActiveRecord::Base
  include ActiveModel::AttributeMethods

  define_attribute_methods 'active'
  before_init :active

  attr_writer :active

  def to_s
    self.first_name + " " + self.last_name
  end

  def active
    self.active = false if self.active.nil?
  end
end
