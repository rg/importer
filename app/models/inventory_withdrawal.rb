class InventoryWithdrawal < ActiveRecord::Base
  has_many :inventory_withdrawal_items, :dependent => :destroy
  accepts_nested_attributes_for :inventory_withdrawal_items
  validates_associated :inventory_withdrawal_items
  
  validate :date, :category, :presence => true
  
  TYPES = %w(tasting corked broken personal)
end
