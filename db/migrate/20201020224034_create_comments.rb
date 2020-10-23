class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :body
      t.text :title
      t.integer :book_id
      t.boolean :approve

      t.timestamps
    end
  end
end
