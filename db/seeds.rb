require 'faker'
require 'pry'

Tag.destroy_all
Restaurant.destroy_all
Dish.destroy_all
DishTag.destroy_all

restaurants = ["Olive Garden", "McDonalds", "Burger King", "Wendy's", "Subway", "Denny's", "Popeyes", "KFC", "Nick's Italian", "Woodfire Grill", "Macaroni Grill", "Cheesecake Factory", "Paul's", "IHOP", "Outback Steakhouse", "LongHorn Steakhouse", "Red Hot & Blue Laurels", "Buffalo Wild Wings", "Shake Shack", "Five Guys"]

dishes = ["Pizza", "Nachos", "Hotdog", "Boneless Wings", "Cheese Burger", "Fries", "Waffles", "Pancakes", "Chicken Sandwhich", "Ice Water"]

tags = ["Spicy", "Vegetarian", "Vegan", "Gluten-free", "Breakfast", "Lunch", "Dinner", "Brunch", "Side", "Fat", "Delivery", "Healthy", "Hot", "Cold", "Raw"]

#create 20 restaurants with array .each


restaurants.each do |r|
  Restaurant.create(name: r)
end

#create 10 dishes and each one needs a restaurant id

Restaurant.all.each do |r|
  dish_count = 0
  while dish_count < 10 do
    Dish.create(name: dishes[dish_count], restaurant_id: r.id)
    dish_count += 1
  end
end


#creating 15 tags

tags.each do |t|
  Tag.create(name: t)
end


#Populate join table
#each dish needs 3 tags

Dish.all.each do |d|
  tag_indices = Tag.all.map do |t|
    t.id
  end
  tag_count = 0
  
  while tag_count < 3 do
    samp = tag_indices.sample
    DishTag.create(dish_id: d.id, tag_id: Tag.all.find(samp).id)
    tag_indices.delete_at(samp)
    tag_count += 1
  end

end





