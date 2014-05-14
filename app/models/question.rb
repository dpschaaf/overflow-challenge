class Question < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :user
  validates_presence_of :title, :body, :user
  # validates_presence_of :body
  # validates_presence_of :user_id
end