module Api
  module V1
    class PropertiesController < ApplicationController
      def index
        if params[:property_type]
          properties = Property.where(property_type: params[:property_type])
        else
          properties = Property.all
        end
        render json: properties
      end
      
      def create
        property = Property.new(property_params)

        if property.save
          render json: property, status: :created
        else
          render json: { errors: property.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def show
        property = Property.find(params[:id])
        render json: property
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Property not found' }, status: :not_found
      end

      private

      def property_params
        params.require(:property).permit(
          :title,
          :img_url1,
          :img_url2,
          :img_url3,
          :img_url4,
          :img_url5,
          :description,
          :price,
          :bedrooms,
          :baths,
          :kitchen,
          :store,
          :water,
          :electricity,
          :security,
          :parking,
          :location,
          :payment_freq,
          :property_type
        )
      end
    end
  end
end
