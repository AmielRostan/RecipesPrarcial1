class Category < ApplicationRecord
  has_many :authors
  has_many :recipes
end
