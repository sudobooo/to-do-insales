class AddIndexToInsalesUserId < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :insales_user_id, unique: true
  end
end
