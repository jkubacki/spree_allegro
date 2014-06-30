class Spree::Allegro::StoreVariant < ActiveRecord::Base
  belongs_to :variant, class_name: 'Spree::Variant'
  belongs_to :store, class_name: 'Spree::Store'
  has_many :store_variant_items
end
