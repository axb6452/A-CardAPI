class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :vehicle, :plate, :total_gallons, :discount_rate, :created_at
  belongs_to :station
end
