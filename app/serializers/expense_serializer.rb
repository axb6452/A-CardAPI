class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :vehicle, :plate, :price, :total_gallons, :discount_rate, :net_total
  belongs_to :station
end
