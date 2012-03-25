class AddPricePaidToBottle < ActiveRecord::Migration
  def change
    add_column :bottles, :price_paid, :float

  end
end
