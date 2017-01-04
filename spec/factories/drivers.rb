FactoryGirl.define do
  factory :driver do
    sequence :name do |n|
      "driver #{n}"
    end

    state :available

    sequence :lonlat do |n|
      "POINT(#{106.6585 + n/200*(106.7384 - 106.6585)} #{10.7258 + (10.7782 - 10.7258) * (n % 200)})"
    end
  end
end

# Dir[Rails.root.join('spec', 'factories', '*.rb')].each { |file| require file }
