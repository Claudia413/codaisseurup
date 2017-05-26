class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event

  before_save :set_price

  def set_price
      price = self.event.price
  end

  def set_total_price
    self.price = event.price
    self.total = price * guests_count
  end
end
