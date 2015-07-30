class Parent < ActiveRecord::Base
  has_many :kids
  has_many :chores
  
end