class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts  do |t|
      t.timestamps null: false
      t.references :customer
      t.integer :amount, null: false
      t.datetime :provided_at, null: false
      t.text :description, null: false
    end

    add_index :gifts, :customer_id
  end
end
