class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :pinned
      t.references :user, null: false, foreign_key: true
      t.references :image, null: false, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
