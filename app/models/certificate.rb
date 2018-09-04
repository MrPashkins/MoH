class Certificate < ApplicationRecord
	# connections
	has_many :certificates_users
	has_many :users, through: :certificates_users

	# validation
	validates :certificate_name, presence: true, length: { maximum: 50 }, uniqueness: true
	validates :description, length: { maximum: 255 }
end