require "rails_helper"

RSpec.describe CustomerMailer, :type => :mailer do
  describe "new_quote_request" do
    let(:notifier) { FactoryGirl.create(:employee_notifier) }
    let(:quote_request) { FactoryGirl.create(:quote_request) }
    let(:mail) { CustomerMailer.new_quote_request(quote_request, notifier) }

    it "renders the headers" do
      expect(mail.subject).to eq("New Quote Request")
      expect(mail.to.first.include?("@mountainshield.com")).to eq(true)
      expect(mail.from).to eq(["support@mountain-shield.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("<h1>New Quote Request from")
      expect(mail.body.encoded).to match("I&#39;ve got big house with lots of bugs")
    end
  end

end
