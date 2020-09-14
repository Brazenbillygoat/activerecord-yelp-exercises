class Tags < ActiveRecord::Base
  has_many :dishtags
  has_many :dishs, through: :dishtags
end
