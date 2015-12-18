class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :handle
      t.string :profile_image_uri

      t.timestamps null: false
    end
    change_column(:users, :handle, :string, { default: "anonymous"})
    change_column(:users, :profile_image_uri, :string, { default: "assets/default-profile-image.jpg" })
  end
end
