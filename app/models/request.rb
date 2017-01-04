class Request
  attr_accessor :lng, :lat, :passenger_id

  def initialize(options)
    location = options["location"]
    @lng = location["lng"]
    @lat = location["lat"]
    @passenger_id = options["passenger_id"]
  end

  def possible_drivers
    Driver
      .find_by_sql(<<-SQL
        SELECT * FROM drivers
        WHERE state = 1
        ORDER BY lonlat <-> st_setsrid(st_makepoint(#{@lng}, #{@lat}), 4326)
        LIMIT 5
      SQL
      )
      .map do |driver|
        {
          id: driver.id,
          location: {
            lat: driver.lonlat.lat,
            lng: driver.lonlat.lon,
          }
        }
      end
  end
end
