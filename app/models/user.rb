class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :email
  validates_presence_of :name
  # Remember to create a migration!
  has_many :tickets
  has_many :blogs
end
