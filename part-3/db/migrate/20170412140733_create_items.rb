class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :condition, null: false
      t.datetime :starts_at, null: false
      t.datetime :ends_at, null:false
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
