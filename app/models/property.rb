class Property < ApplicationRecord
  # Define the attributes of the Property model
  # These should match the form fields in your property listing component
  attr_accessor :title, :property_type, :price, :payment_freq, :location, :description, :parking, :bedrooms, :baths, :kitchen, :store, :water, :electricity, :security, :img_url1, :img_url2, :img_url3, :img_url4, :img_url5

  # Add any validations for the attributes
  validates :title, presence: true
  validates :property_type, presence: true
  validates :payment_freq, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :img_url1, presence: true
  validates :img_url2, presence: true
  validates :img_url3, presence: true
  validates :img_url4, presence: true
  validates :img_url5, presence: true
  # validates :bedrooms, presence: true
  # validates :baths, presence: true
  # validates :kitchen, presence: true
  # validates :store, presence: true
  # validates :water, presence: true
  # validates :electricity, presence: true
  # validates :security, presence: true
  # validates :parking, presence: true

  # Add any additional model logic or associations as required
end
