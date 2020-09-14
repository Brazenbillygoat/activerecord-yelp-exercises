class DishTags < ActiveRecord::Migration[5.2.3]

  def change 
    create_table :dishtags do |t|
      t.string :name
    end
  end
  
end