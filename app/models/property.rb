class Property < ApplicationRecord
  # Define the attributes of the Property model
  # These should match the form fields in your property listing component
  attr_accessor :title, :img_url1, :img_url2, :img_url3, :img_url4, :img_url5, :description, :price, :bedrooms, :baths, :kitchen, :store, :water, :electricity, :security, :property_type, :payment_freq, :location, :parking

  # Add any validations for the attributes
  validates :title, presence: true
  validates :img_url1, presence: true
  validates :img_url2, presence: true
  validates :img_url3, presence: true
  validates :img_url4, presence: true
  validates :img_url5, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :bedrooms, presence: true
  validates :baths, presence: true
  validates :kitchen, presence: true
  validates :store, presence: true
  validates :water, presence: true
  validates :electricity, presence: true
  validates :security, presence: true
  validates :property_type, presence: true
  validates :payment_freq, presence: true
  validates :location, presence: true
  validates :parking, presence: true

  # Add any additional model logic or associations as required
end
