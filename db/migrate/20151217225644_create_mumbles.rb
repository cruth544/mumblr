class CreateMumbles < ActiveRecord::Migration
  def change
    create_table :mumbles do |t|
      t.string :text
      t.string :image_uri
      t.text :tags
      t.integer :likes
      t.integer :user_id

      # t.index(:email, unique: true)

      t.timestamps null: false
    end
    change_column(:mumbles, :likes, :integer, { default: 0 })
  end
end
