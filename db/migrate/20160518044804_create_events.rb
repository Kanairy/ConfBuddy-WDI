class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :type
      t.string :time
      t.string :presenter
      t.text :description
      t.string :sponsor

      t.timestamps null: false
    end
  end
end
