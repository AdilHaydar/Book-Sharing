class CreateSharings < ActiveRecord::Migration[6.0]
  def change
    create_table :sharings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
