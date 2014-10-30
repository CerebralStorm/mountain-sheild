class QuoteRequest < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true

  after_create :send_email_notificaiton

  def send_email_notification
    EmployeeNotifier.find_each do |notifier|
      CustomerMailer.new_quote_request(self, notifier).deliver
    end
  end
end
