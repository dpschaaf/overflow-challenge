class Question < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :user
  has_many answers:, as: :answerable
  has_many comments:, as: :commentable
  validates_presence_of :title, :body, :user

end