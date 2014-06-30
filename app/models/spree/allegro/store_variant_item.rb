class Spree::Allegro::StoreVariantItem < ActiveRecord::Base
  belongs_to :store_variant_item
  belongs_to :category
end
