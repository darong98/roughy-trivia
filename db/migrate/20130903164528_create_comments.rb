class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post, index: true
      t.integer :dislike_count

      t.timestamps
    end

    add_index :comments, :post_id
  end
end
