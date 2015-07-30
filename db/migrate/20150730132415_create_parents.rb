class CreateParents < ActiveRecord::Migration
  def up
    create_table :parents do |t|
      t.string :name
    end
  end
    
  def down
    drop_table :parents
  end
    
end
