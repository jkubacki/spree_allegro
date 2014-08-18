class Spree::Allegro::SellFormOption < ActiveRecord::Base
  belongs_to :category
  belongs_to :store_variant_item

  scope :default, -> { where(store_variant_item_id: nil) }
end
