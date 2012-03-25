class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.integer :vintage
      t.string :label
      t.string :varietal
      t.integer :quantity
      t.integer :bottle_size_ml

      t.timestamps
    end
  end
end
