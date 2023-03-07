class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} must implement the '#{__method__}' method"
  end
end