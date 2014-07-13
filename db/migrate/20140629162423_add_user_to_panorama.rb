class AddUserToPanorama < ActiveRecord::Migration
  def change
    add_column :panoramas, :user_id, :integer
    add_index :panoramas, :user_id
  end
end
