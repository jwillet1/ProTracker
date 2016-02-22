class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.references :vehicle, index: true, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.string :purpose
      t.text :note
      t.string :user
      t.string :location
      t.boolean :complete
      t.string :attribute

      t.timestamps null: false
    end
  end
end
