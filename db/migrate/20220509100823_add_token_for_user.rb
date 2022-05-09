class AddTokenForUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :token, :string
    add_column :users, :google_oauth_token, :string
    add_column :users, :facebook_oauth_token, :string

    add_index :users, :token, using: :btree
  end
end
