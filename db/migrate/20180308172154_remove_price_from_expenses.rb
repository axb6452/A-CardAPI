class RemovePriceFromExpenses < ActiveRecord::Migration[5.1]
  def change
    remove_column :expenses, :price, :float
  end
end
