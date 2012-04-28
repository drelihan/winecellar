class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :bottle_id
      t.integer :quantity
      t.integer :score
      t.string :who
      t.string :drank_with
      t.text :notes

      t.timestamps
    end
  end
end
