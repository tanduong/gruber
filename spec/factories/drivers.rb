FactoryGirl.define do
  factory :driver do
    sequence :name do |n|
      "driver #{n}"
    end

    sequence :lonlat do |n|
      "POINT(#{106.6585 + n/160*(106.7384 - 106.6585)} #{10.7258 + (10.7782 - 10.7258) * (n % 160)})"
    end
  end
end

# Dir["/path/to/directory/*.rb"].each {|file| require file }
# Dir[Rails.root.join('spec', 'factories', '*.rb')].each { |file| require file }
