class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.boolean :buddy
      t.string :strength
      t.string :seeking
      t.string :linkedin_url

      t.timestamps null: false
    end
  end
end
