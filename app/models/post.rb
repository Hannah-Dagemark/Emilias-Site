class Post < ApplicationRecord
  belongs_to :user
  belongs_to :image
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings
end
