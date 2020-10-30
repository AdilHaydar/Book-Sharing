class AddStatusToSharings < ActiveRecord::Migration[6.0]
  def change
    add_column :sharings, :status, :boolean
  end
end
