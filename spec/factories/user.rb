FactoryGirl.define do

  factory :user do
    sequence :email do |n|
      "client#{n}@somanypests.com"
    end
  end

end