class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.text :text
      t.integer :count

      t.timestamps
    end
  end
end
