class User < ActiveRecord::Base
  has_secure_password
  validates :email, :username, presence: true
  has_many :posts
  has_many :comments
  has_many :received_comments, through: :posts, source: :comments
end