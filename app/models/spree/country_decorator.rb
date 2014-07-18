Spree::Country.class_eval do
  has_many :spree_cities, :through => :spree_states
end