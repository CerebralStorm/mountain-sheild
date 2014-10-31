class Property < ActiveRecord::Base
  belongs_to :user

  has_many :contracts

  def city_state_zip
    [self.city, self.state, self.zip].join(", ")
  end
end
