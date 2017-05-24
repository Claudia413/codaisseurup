class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :subjects
  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 500}
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  def bargain?
    price < 5
  end

  def self.order_by_price
    order(:price)
  end

end
