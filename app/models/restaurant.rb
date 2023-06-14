class Restaurant < ApplicationRecord
  VALID_CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, presence: true, inclusion: { in: VALID_CATEGORIES, message: "It is not a valid category" }
end
