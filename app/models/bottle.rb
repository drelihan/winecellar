class Bottle < ActiveRecord::Base
  has_many :ratings
  
  def self.get_title(id)
    if ( !id ) 
      return nil
    end
    
    bottle = Bottle.find(id)
    "#{bottle.vintage} #{bottle.vineyard.capitalize} #{bottle.label} ( #{bottle.varietal} )"
  end
  
end
