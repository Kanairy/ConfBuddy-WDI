class AddImageUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :linkedin_image_url, :string
    add_column :users, :linkedin_id, :string
    add_column :users, :linkedin_headline, :string
    add_column :users, :linkedin_location, :string
    add_column :users, :linkedin_industry, :string
    add_column :users, :linkedin_positions, :string
    add_column :users, :linkedin_specialities, :string
  end
end
