class Order < ApplicationRecord
  # belongs_to :order_status
  belongs_to :user
  has_many :order_items
  before_validation :set_order_status
  before_save :update_subtotal

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
private
  def set_order_status
    self.order_status_id = 1 if self.order_status_id.nil?
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
