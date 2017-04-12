class CreateItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :condition
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :bid
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
