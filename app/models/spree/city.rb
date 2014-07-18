module Spree
  class City < ActiveRecord::Base
    has_one :spree_zone_member, :as => :zoneable
    has_one :spree_zone, :through => :spree_zone_member
    belongs_to :spree_state
    has_one :spree_country, :through => :spree_state
    validates_presence_of :name
    validates_uniqueness_of :name, :scope => [:state_id]
    
    def state_and_city
      if state
        state.name + '- ' + name
      else
        name
      end
    end
  end
end
