class AddVineyardToBottle < ActiveRecord::Migration
  def change
    add_column :bottles, :vineyard, :string

  end
end
