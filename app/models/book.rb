class Book < ApplicationRecord
	validates :title, presence: true
	validates :author, presence: true

	belongs_to :user
	has_many :comments

	has_many :sharings
	#has_many :user, through: :sharings
end
