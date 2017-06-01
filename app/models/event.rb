class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :subjects
  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user
  has_many :photos
  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 500}
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  def self.alphabetical
    order(name: :asc)
  end

  scope :active, -> { where(active: true)}

  def bargain?
    price < 5
  end

  def self.order_by_price
    order(:price)
  end

end
