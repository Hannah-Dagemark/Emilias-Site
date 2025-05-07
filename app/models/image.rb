class Image < ApplicationRecord
  has_one_attached :file

  validates :title, :file, presence: true
end
