class Dish < ActiveRecord::Base
  has_many :dish_tags
  has_many :tags, through: :dish_tags
end