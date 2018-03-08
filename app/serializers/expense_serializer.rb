class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :vehicle, :plate, :total_gallons, :discount_rate
  belongs_to :station
end
