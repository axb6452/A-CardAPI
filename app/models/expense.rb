# frozen_string_literal: true

class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :station
  validates :vehicle, :plate, :total_gallons, :discount_rate,
            :station_id, :user, presence: true
end
