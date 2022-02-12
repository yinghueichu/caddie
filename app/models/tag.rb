class Tag < ApplicationRecord
  has_many :product_tags
  has_many :products, through: :product_tags
  has_one_attached :photo
end
