class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers  do |t|
      t.timestamps null: false
      t.string :first_name, limit: 128, null: false
      t.string :last_name, limit: 128, null: false
      t.string :email, limit: 128, null: false
      t.string :phone, limit: 10, null: false
    end

    add_index :customers, :email
    add_index :customers, :phone
  end
end
