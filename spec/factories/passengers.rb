FactoryGirl.define do
  factory :passenger do
    sequence :name do |n|
      "driver #{n}"
    end
  end
end

