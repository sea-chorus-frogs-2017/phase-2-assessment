class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :condition, null: false
      t.datetime :auction_start, null: false
      t.datetime :auction_end, null: false
      t.string :description, null: false
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
