# frozen_string_literal: true

class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :station
  validates :vehicle, :plate, :price, :total_gallons, :discount_rate,
            :net_total, :user, presence: true
end
