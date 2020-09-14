class Dishtags < ActiveRecord::Base
  belongs_to :dishs
  belongs_to :tags
end