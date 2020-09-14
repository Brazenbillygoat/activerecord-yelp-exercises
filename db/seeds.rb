restaurants = ["Olive Garden", "Macdonalds", "Burger King", "Wendy's", "Subway", "Denny's", "Popeyes", "KFC", "Nick's Italian", "Woodfire Grill", "Macaroni Grill", "Cheesecake Factory", "Paul's", "IHOP", "Outback Steakhouse", "LongHorn Steakhouse", "Red Hot & Blue Laurels", "Buffalo Wild Wings", "Shake Shack", "Five Guys"]

dishs = ["Pizza", "Nachos", "Hotdog", "Boneless Wings", "Cheese Burger", "Fries", "Waffles", "Pancakes", "Chicken Sandwhich", "Ice Water"]

tags = ["Spicy", "Vegetarian", "Vegan", "Gluten-free", "Breakfast", "Lunch", "Dinner", "Brunch", "Side", "Fat", "Delivery", "Healthy", "Hot", "Cold", "Raw"]

#create 20 restaurants with array .each
#Restaurant.create(name: "#{rest}")

#and each one needs 10 dishs

#each dish needs 3 tags

restaurant.each do |rest|
  Restaurant.create(name: "#{rest}")
end

