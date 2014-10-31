class Contract < ActiveRecord::Base

  belongs_to :property

  validates :user_id, presence: true
end
