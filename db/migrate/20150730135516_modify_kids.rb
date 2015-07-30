class ModifyKids < ActiveRecord::Migration
  def up
   
    add_column :kids, :score, :integer
  end

  def down
    
    remove_column :kids, :score, :integer
  end
  
end


