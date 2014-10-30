FactoryGirl.define do

  factory :quote_request do
    sequence :name do |n|
      "user#{n}"
    end
    sequence :email do |n|
      "user#{n}@killmypests.com"
    end
    phone "8014441234"
    description "I've got big house with lots of bugs"
  end

end
