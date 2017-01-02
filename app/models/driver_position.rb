class DriverPosition
  attr_accessor :lon, :lat

  POINT_FACTORY = RGeo::Geographic.spherical_factory(srid: 4326)

  def initialize(lon, lat)
    @lon = lon
    @lat = lat
  end

  def to_point
    @point ||= POINT_FACTORY.point(@lon, @lat)
  end
end
