module Spree
  class City < ActiveRecord::Base
    has_one :zone_member, :as => :zoneable, class_name: 'Spree::ZoneMember'
    has_one :zone, :through => :spree_zone_member, class_name: 'Spree::Zone'
    belongs_to :state, class_name: 'Spree::State'
    has_one :country, :through => :state, class_name: 'Spree::Country'
    validates_presence_of :name
    validates_uniqueness_of :name, :scope => [:state_id]
    
    attr_accessible :name, :state, :state_id
    
    def state_and_city
      if state
        state.name + '- ' + name
      else
        name
      end
    end
  end
end
