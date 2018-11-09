class RemoveInnFromUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :inn, :integer
  end
end
