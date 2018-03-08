class RemoveNetTotalFromExpenses < ActiveRecord::Migration[5.1]
  def change
    remove_column :expenses, :net_total, :float
  end
end
