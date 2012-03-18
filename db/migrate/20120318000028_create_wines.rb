class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :vintage
      t.references :producer
      t.string :appellation
      t.text :notes

      t.timestamps
    end
    add_index :wines, :producer_id
  end
end
