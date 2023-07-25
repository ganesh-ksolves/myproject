class Article < ApplicationRecord
  paginates_per 5

  belongs_to :user
  has_many :comments, as: :commentable
  has_many :likes_count
  mount_uploader :image, ImageUploader

  
end
