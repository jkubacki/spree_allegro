class Spree::Allegro::StoreVariantItem < ActiveRecord::Base
  belongs_to :store_variant
  belongs_to :category
  has_many :auctions
  has_many :sell_form_options
end
