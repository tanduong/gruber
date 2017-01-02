require 'factory_girl'
# Dir[Rails.root.join('spec', 'factories', '*.rb')].each { |file| require file }

class SeedIt
  def self.seed_drivers(count=40000)
    Driver.delete_all
    ActiveRecord::Base.connection.reset_pk_sequence!('drivers')

    count.times do
      FactoryGirl.create(:driver)
    end
  end

  def self.seed_passengers(count=200000)
    Passenger.delete_all
    ActiveRecord::Base.connection.reset_pk_sequence!('passengers')

    count.times do
      FactoryGirl.create(:passenger)
    end
  end
end

SeedIt.seed_drivers
SeedIt.seed_passengers

