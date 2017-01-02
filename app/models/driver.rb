class Driver < ApplicationRecord
  after_initialize :set_default_values

  enum state: { busy: 0, available: 1 }

  # factory = RGeo::Geographic.spherical_factory(srid: 4326)
  # point = factory.point(-122.193963, 47.675086)

  # driver.lonlat = "POINT(-122.193963 47.675086)"

  def set_default_values
    if new_record?
      self.state = :busy
    end
  end
end
