class Restaurant < ActiveRecord::Base
  has_many :dishes


  def self.mcdonalds
    Restaurant.find_by(name:"McDonalds")
  end


  def self.tenth
    restaurants
  end







end