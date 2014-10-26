require 'rails_helper'

RSpec.describe Contract, :type => :model do
  let(:contact) { FactoryGirl.create(:contact)}

  context "associations" do
    it 'should belong to a user' do
      expect(Contract.reflect_on_association(:user)).to_not be_nil
      expect(Contract.reflect_on_association(:user).macro).to eql(:belongs_to)
    end
  end

  context "validations" do
    it "should require a user" do
      expect(FactoryGirl.build(:contract, user_id: nil)).to_not be_valid
    end
  end
end
