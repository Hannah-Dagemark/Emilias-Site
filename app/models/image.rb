class Image < ApplicationRecord
  has_one_attached :file

  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

  validates :title, :file, presence: true
end
