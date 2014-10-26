require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) { FactoryGirl.create(:user) }

  context "associations" do
    it 'should have many contracts' do
      expect(User.reflect_on_association(:contracts)).to_not be_nil
      expect(User.reflect_on_association(:contracts).macro).to eql(:has_many)
    end
  end

  context "validations" do
  end

end