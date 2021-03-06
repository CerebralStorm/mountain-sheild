class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :properties, dependent: :destroy
  has_many :contracts, through: :properties

  def full_name
    [self.first_name, self.last_name].join(" ")
  end
end
