class Dishs < ActiveRecord::Migration[5.2.3]
  
  def change
    create_table :dishs do |t|
      t.string :name
    end
  end

end