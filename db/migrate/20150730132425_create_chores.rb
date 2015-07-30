class CreateChores < ActiveRecord::Migration
  def up
    create_table :chores do |t|
      t.string :name
      t.integer :parent_id
    end
  end
  
  def down
    drop_table :chores
  end
end
