class CreateAuthenticators < ActiveRecord::Migration
  def change
    create_table :authenticators do |t|
      t.string :provider
      t.string :uid
      t.references :user, index: true

      t.timestamps
    end
  end
end
