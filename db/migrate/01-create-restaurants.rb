class Restaurants < ActiveRecord::Migration[5.2.3]
  
  def change
    creat_table :restaurants do |t|
      t.string :name
    end
  end

end