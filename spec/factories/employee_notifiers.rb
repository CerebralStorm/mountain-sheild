FactoryGirl.define do
  factory :employee_notifier do
    sequence :email do |n|
      "employee#{n}@mountainshield.com"
    end
  end

end
