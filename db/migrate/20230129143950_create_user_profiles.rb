class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.string :full_name
      t.string :username
      t.string :password
      t.string :gender
      t.integer :age
      t.string :email_address
      t.integer :mobile
      t.string :bio
      t.string :role
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
