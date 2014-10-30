require 'rails_helper'

RSpec.describe EmployeeNotifier, :type => :model do
  context "validations" do
    it "should require an email" do
      expect(FactoryGirl.build(:employee_notifier, email: nil)).to_not be_valid
    end

    it "should be valid with an email" do
      expect(FactoryGirl.build(:employee_notifier)).to be_valid
    end
  end
end
