class AddColumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :start_at, :timestamp
    add_column :events, :end_at, :timestamp
  end
end
