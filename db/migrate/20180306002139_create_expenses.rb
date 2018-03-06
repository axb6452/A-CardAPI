class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :vehicle, null: false
      t.string :plate, null: false
      t.float :price, null: false
      t.float :total_gallons, null: false
      t.float :discount_rate, null: false
      t.float :net_total, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
