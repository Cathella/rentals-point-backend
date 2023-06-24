class Api::V1::PropertiesController < ApplicationController
  def index
    # Return a list of properties
    properties = Property.all
    render json: properties, status: :ok
  end

  def show
    # Return a specific property
  end

  def create
    # Create a new property
    property = Property.new(property_params)
    if property.save
      render json: {message: 'Property listed successfully'}, status: :created
    else
      render json: {errors: property.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    # Update an existing property
  end

  def destroy
    # Delete the specified property
  end

  private

  def property_params
    params.require(:property).permit(:title, :property_type, :price, :payment_freq, :location, :description, :parking, :bedrooms, :baths, :kitchen, :store, :water, :electricity, :security, :img_url1, :img_url2, :img_url3, :img_url4, :img_url5)
  end
end

