class CreateInventoryWithdrawals < ActiveRecord::Migration
  def change
    create_table :inventory_withdrawals do |t|
      t.date :date
      t.string :category
      t.text :notes

      t.timestamps
    end
  end
end
