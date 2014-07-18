Spree::State.class_eval do
  has_many :cities, class_name: 'Spree::City'
end