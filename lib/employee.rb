require 'securerandom'

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200 }
  before_create :assign_password

  private
  def assign_password
    self.password = SecureRandom.base64[0, 8]
  end
end
