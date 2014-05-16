class Question < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :user
  has_many answers:, as: :answerable
  validates_presence_of :title, :body, :user

end