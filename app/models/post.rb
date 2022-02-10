class Post < ApplicationRecord
  validates_presence_of :name, :description
  belongs_to :user
  has_many :comments, dependent: :destroy
end
