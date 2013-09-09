class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :writer, index: true
      t.string :title
      t.text :text
      t.integer :count

      t.timestamps
    end
  end
end
