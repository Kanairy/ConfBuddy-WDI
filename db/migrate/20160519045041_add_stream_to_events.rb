class AddStreamToEvents < ActiveRecord::Migration
  def change
    add_column :events, :stream, :string
  end
end
