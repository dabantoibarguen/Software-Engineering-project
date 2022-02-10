class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :comments
  has_many :reviews
  has_many :posts, through: :comments
  has_many :items, through: :reviews
    # has_many :reviews, :comments, :posts #This could be the main issue
    # devise :database_authenticatable, :registerable, :rememberable, :validatable #devise github steps
    # THIS MUST BE REPLACED BY DEVISE MODEL with
    # rails generate devise User
    # Fix route comment when this is replaced
end