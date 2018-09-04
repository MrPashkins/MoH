class User < ApplicationRecord
# connections
	has_many :certificates_users
	has_many :certificates, through: :certificates_users

# validation
	before_save { self.email = email.downcase }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
	validates :email, presence: true, length: { maximum: 50 }, 
			format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	validates :inn, uniqueness: true, allow_nil: true
	validates :phone_number, presence: true, uniqueness: true
	validates :password, presence: true, length: { minimum: 5 }, allow_nil: true

	has_secure_password

# Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
