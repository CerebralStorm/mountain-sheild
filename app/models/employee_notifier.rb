class EmployeeNotifier < ActiveRecord::Base
  validates :email, presence: true
end
