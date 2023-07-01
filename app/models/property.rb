class Property < ApplicationRecord
  validates :title, :location, :description, :owner_name, :owner_contact, :owner_gender, presence: true
  validates :img_url1, :img_url2, :img_url3, :img_url4, :img_url5, :video_url, :lives, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :bedrooms, :baths, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :kitchen, :store, :water, :electricity, :security, inclusion: { in: [true, false] }
  validates :parking, :property_avail, inclusion: { in: ['Available', 'Not Available'] }
  validates :payment_freq, presence: true, inclusion: { in: ['night', 'week', 'month', 'year'] }
  validates :property_type, presence: true, inclusion: { in: ['house', 'apartment', 'office', 'shop', 'rental'] }
end
