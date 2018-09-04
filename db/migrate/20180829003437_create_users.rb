class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :inn
      t.text :certificate

      t.timestamps
    end
    add_index :users, :email
  end
end
