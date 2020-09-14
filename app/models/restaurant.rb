class Restaurant < ActiveRecord::Base
  has_many :dishes


  def self.mcdonalds
    Restaurant.find_by(name:"McDonalds")
  end


  def self.tenth
    first_ten_restaurants = self.take(10)
    return first_ten_restaurants[-1]
  end

  def self.with_long_names
    # greater_than_twelve_chars = self.all.map do |r|
    #   r.name.gsub(" ", "").length > 12
    # end

    long_names = self.group("name").map do |r|
      if r.name.gsub(" ", "").length > 12
        r.name
      end
    end
    long_names.delete(nil)
    return long_names
  end







end