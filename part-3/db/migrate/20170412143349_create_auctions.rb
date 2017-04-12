class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :name, null: false
      t.string :condition, null: false
      t.datetime :starts_at, null: false
      t.datetime :ends_at, null: false
      t.text :description
      t.timestamps null: false
    end
  end
end
