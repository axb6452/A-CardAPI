class AddStationToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_reference :expenses, :station, foreign_key: true
  end
end
