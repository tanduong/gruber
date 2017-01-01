class Driver < ApplicationRecord
  after_initialize :set_default_values

  enum state: { busy: 0, available: 1 }

  def set_default_values
    if new_record?
      self.state = :busy
    end
  end
end
