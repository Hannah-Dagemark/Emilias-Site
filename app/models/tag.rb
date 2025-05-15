class Tag < ApplicationRecord
  has_many :taggings
  has_many :posts, through: :taggings, source: :taggable, source_type: "Post"
  has_many :images, through: :taggings, source: :taggable, source_type: "Image"
end
