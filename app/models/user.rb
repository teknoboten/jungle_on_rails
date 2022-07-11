class User < ApplicationRecord

  has_secure_password # adds methods to set / authenticate against a bcrypt pw

  validates :email, presence: true, uniqueness: true

end
