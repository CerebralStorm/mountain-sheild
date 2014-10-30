class CustomerMailer < ActionMailer::Base
  default from: "support@mountain-shield.com"

  def new_quote_request(quote_request, employee_notifier)
    @quote_request = quote_request

    mail to: employee_notifier.email, subject: "New Quote Request"
  end
end
