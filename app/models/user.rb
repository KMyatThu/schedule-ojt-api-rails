class User < ApplicationRecord
  # Encrypt Password
  has_secure_password

  # association with create user and update user
  has_many :create_user_post, class_name: "Post", foreign_key: :create_user_id
  has_many :updated_user_post, class_name: "Post", foreign_key: :updated_user_id

  # validation for user
  validates :name, presence: true , uniqueness: true
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :role, presence: true
  validates :create_user_id, presence: true
  validates :updated_user_id, presence: true
end
