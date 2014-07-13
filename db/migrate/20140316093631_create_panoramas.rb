class CreatePanoramas < ActiveRecord::Migration
  def change
    create_table :panoramas do |t|
      t.string :title
      t.float :center, default: 0
      t.float :heading
      t.float :lon, default: 0
      t.float :lat, default: 0
      t.string :copyright
      t.string :description
      t.attachment :image

      t.timestamps
    end
  end
end
