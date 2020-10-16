class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true
  validates :username, presence: true, length: { minimum: 5, maximum: 50 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books
end
