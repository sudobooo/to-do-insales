class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :insales_user_id
      t.string  :name

      t.timestamps
    end
  end
end
