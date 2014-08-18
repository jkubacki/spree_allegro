class Spree::Allegro::StoreVariant < ActiveRecord::Base
  belongs_to :store_variant, class_name: Spree::StoreVariant
  has_many :store_variant_items
end
