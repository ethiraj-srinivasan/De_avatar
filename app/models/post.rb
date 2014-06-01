class Post < ActiveRecord::Base
  attr_accessible :author, :content, :title

  has_many :comments
  validates_presence_of :author, :content, :title
end
