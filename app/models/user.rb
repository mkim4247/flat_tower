class User < ApplicationRecord
  has_one :tower, dependent: :destroy
  has_many :floors, through: :tower
  has_many :shops, through: :floors
  has_secure_password
  validates :username, :uniqueness => {:case_sensitive => false}
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true, on: :create
end
