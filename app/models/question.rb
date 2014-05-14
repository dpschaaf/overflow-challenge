class Question < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :user
  validates_presence_of :title, :body, :user
end