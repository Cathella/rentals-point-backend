class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :phone
      t.string :gender
      t.integer :age
      t.text :bio
      t.string :housemate_gender
      t.integer :housemate_age
      t.string :lifestyle
      t.text :special_notes
      t.decimal :budget
      t.string :facebook
      t.string :instagram
      t.string :twitter

      t.timestamps
    end
  end
end
