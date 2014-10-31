class Property < ActiveRecord::Base
  belongs_to :user

  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true

  has_many :contracts

  def city_state_zip
    [self.city, self.state, self.zip].join(", ")
  end

  def full_address
    [self.address, self.city, self.state, self.zip].join(", ")
  end
end
