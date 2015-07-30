class Kid < ActiveRecord::Base
  has_many :chores, through: :parents
 
  
end