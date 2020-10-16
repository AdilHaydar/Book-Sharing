class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.text :title
      t.text :author
      t.integer :pagecount
      t.integer :user_id
      t.boolean :tradeable

      t.timestamps
    end
  end
end
