class Rating < ActiveRecord::Base
  belongs_to :bottle
  
  validates_presence_of :score
  
end
