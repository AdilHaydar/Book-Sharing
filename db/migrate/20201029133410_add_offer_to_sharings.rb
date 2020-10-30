class AddOfferToSharings < ActiveRecord::Migration[6.0]
  def change
    add_column :sharings, :offer_book_id, :integer
  end
end
