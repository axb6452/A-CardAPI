class StationSerializer < ActiveModel::Serializer
  attributes :id, :name, :petrol_price, :diesel_price
  has_many :expenses
end
