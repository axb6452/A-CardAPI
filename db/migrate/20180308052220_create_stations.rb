class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :name
      t.float :petrol_price
      t.float :diesel_price

      t.timestamps
    end
  end
end
