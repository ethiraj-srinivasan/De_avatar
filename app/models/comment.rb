class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :content
 validates_presence_of :post, :content
end
