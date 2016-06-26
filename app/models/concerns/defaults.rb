module Defaults
  # from this blog: http://mrkris.com/2015/02/08/setting-default-values-in-active-record/
  # Added to instance of object
  included do
    after_initialize :apply_default_values
  end

  # Callback for setting default values
  def apply_default_values
    self.class.defaults.each do |attribute, param|
      next unless self.send(attribute).nil?
      value = param.respond_to?(:call) ? param.call(self) : param
      self[attribute] = value
    end
  end