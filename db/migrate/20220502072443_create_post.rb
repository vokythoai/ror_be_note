class CreatePost < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.string :title
      t.string :content
      t.integer :tag_id

      t.timestamps
    end
  end
end
