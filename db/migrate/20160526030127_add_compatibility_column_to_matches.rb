class AddCompatibilityColumnToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :compatibility, :string
  end
end
