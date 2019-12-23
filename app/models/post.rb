class Post < ApplicationRecord
	has_one :image, as: :imageable, dependent: :destroy
	accepts_nested_attributes_for :image
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, dependent: :destroy
end
