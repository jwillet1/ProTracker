class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :tag_number
      t.string :build_id
      t.string :label
      t.string :milestone
      t.string :program
      t.text :description
      t.datetime :expected_delivery_date
      t.datetime :actual_delivery_date
      t.string :owner

      t.timestamps null: false
    end
    add_index :vehicles, :tag_number
    add_index :vehicles, :build_id
  end
end
