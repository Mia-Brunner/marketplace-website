class Listing < ApplicationRecord
  belongs_to :profile

  has_one_attached :image
end
