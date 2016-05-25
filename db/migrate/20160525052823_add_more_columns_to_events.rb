class AddMoreColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :location, :string
    add_column :events, :image, :string
  end
end
