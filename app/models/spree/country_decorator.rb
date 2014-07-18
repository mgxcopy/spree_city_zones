Spree::Country.class_eval do
  has_many :cities, :through => :states, class_name: 'Spree::City'
end