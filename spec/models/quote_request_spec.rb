require 'rails_helper'

RSpec.describe QuoteRequest, :type => :model do
  context "validations" do
    it "should require an email" do
      expect(FactoryGirl.build(:quote_request, email: nil)).to_not be_valid
    end

    it "should be valid with an email" do
      expect(FactoryGirl.build(:quote_request)).to be_valid
    end
  end
end
