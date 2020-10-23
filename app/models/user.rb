class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true
  validates :username, presence: true, length: { minimum: 5, maximum: 50 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :generate_username

  has_many :books
  has_many :comments
  private
  def generate_username
  	self.username = self.email.split('@').first
  end
end
