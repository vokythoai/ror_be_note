class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :phone
      t.string :user_code

      t.timestamps
    end
  end
end
