class User < ApplicationRecord
  has_secure_password

  # Validations
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6 }
  validates :account, inclusion: { in: %w[tenant landlord] }

  # Associations
  has_one :user_profile, dependent: :destroy
end
