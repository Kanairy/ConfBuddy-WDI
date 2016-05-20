class ChangeTypeToTypeIdInEvents < ActiveRecord::Migration
  def change
    rename_column :events, :type, :type_id
  end
end
