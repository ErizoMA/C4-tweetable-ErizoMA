class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Associations
  has_many :tweets, dependent: :destroy
  has_many :comments, dependent: :destroy

  # Validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :email, uniqueness: true
  validates :email, format: { with: VALID_EMAIL_REGEX }, allow_blank: false
  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, numericality: { greater_than_or_equal_to: 6 }

  # Active Storage
  has_one_attached :avatar
end
