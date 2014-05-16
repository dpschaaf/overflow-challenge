class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username
  attr_accessible :username, :password
  has_many :questions
  has_many answers:, as: :answerable
  has_many comments:, as: :commentable
end