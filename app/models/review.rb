class Review < ApplicationRecord
  validates_presence_of :stars, :review
  belongs_to :item
  belongs_to :user
end
