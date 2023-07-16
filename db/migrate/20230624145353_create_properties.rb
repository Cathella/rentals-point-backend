class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :img_url1
      t.string :img_url2
      t.string :img_url3
      t.string :img_url4
      t.string :img_url5
      t.text :description
      t.integer :price
      t.integer :bedrooms
      t.integer :baths
      t.boolean :kitchen
      t.boolean :store
      t.boolean :water
      t.boolean :electricity
      t.boolean :security
      t.string :property_type
      t.string :payment_freq
      t.string :location
      t.string :parking
      t.string :owner_name
      t.string :owner_contact
      t.string :owner_gender
      t.string :property_avail
      t.string :lives
      t.string :video_url

      t.timestamps
    end
  end
end
