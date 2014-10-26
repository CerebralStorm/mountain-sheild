FactoryGirl.define do
  factory :contract do
    user
    status "active"
    initial_service_date "2014-10-25 22:09:13"
    initial_service_charge 1.5
  end

end
