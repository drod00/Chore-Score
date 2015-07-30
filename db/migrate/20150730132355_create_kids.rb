class CreateKids < ActiveRecord::Migration
  def up
    create_table :kids do |t|
      t.string :name
      t.integer :parent_id
      
    end
  end
  
  def down
    drop_table :kids
  end
end
