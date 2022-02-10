class Comment < ApplicationRecord
  validates_presence_of :comment
  belongs_to :user
  belongs_to :post
end
