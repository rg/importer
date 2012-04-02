class InventoryWithdrawal < ActiveRecord::Base
  has_many :inventory_withdrawal_items
  accepts_nested_attributes_for :inventory_withdrawal_items
  TYPES = %w(tasting corked broken personal)
end
