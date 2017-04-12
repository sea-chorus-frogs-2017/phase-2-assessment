class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :name
      t.string :condition
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :description
      t.integer :auctioner_id

      t.timestamps null: false
    end
  end
end
