module Spree
  module Admin
    class CitiesController < Admin::ResourceController
      belongs_to :spree_state
      before_filter :load_data

      def index
        respond_with(@collection) do |format|
          format.html
          format.js  { render :partial => 'city_list.html.erb' }
        end
      end

      protected

      def location_after_save
        admin_country_state_cities_url(@country,@state)
      end

      def location_after_create
        admin_country_state_cities_url(@country,@state)
      end

      def collection
        super.order(:name)
      end

      def load_data
        @countries = Spree::Country.order(:name)
        @country = Spree::Country.find(params[:country_id])
        @states = Spree::State.order(:name)
        @state = Spree::State.find(params[:state_id])
      end
    end
  end
end