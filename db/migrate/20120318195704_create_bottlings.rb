class CreateBottlings < ActiveRecord::Migration
  def change
    create_table :bottlings do |t|
      t.references :wine
      t.string :bottle_size
      t.string :warehouse_location

      t.timestamps
    end
    add_index :bottlings, :wine_id
  end
end
