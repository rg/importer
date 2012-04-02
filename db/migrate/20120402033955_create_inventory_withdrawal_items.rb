class CreateInventoryWithdrawalItems < ActiveRecord::Migration
  def change
    create_table :inventory_withdrawal_items do |t|
      t.references :inventory_withdrawal
      t.references :bottling
      t.integer :quantity

      t.timestamps
    end
    add_index :inventory_withdrawal_items, :inventory_withdrawal_id
    add_index :inventory_withdrawal_items, :bottling_id
  end
end
