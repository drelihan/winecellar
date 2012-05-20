class Bottle < ActiveRecord::Base
  has_many :ratings
  
  def self.get_title(id)
    if ( !id ) 
      return nil
    end
    
    bottle = Bottle.find(id)
    vineyard = bottle.vineyard ? bottle.vineyard.capitalize : bottle.vineyard
    "#{bottle.vintage} #{vineyard} #{bottle.label} ( #{bottle.varietal} )"
  end
  
end
