class CreateMatchesTable < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_one_id
      t.integer :user_two_id
    end
  end
end
