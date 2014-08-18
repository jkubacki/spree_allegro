class Spree::Allegro::Option < ActiveRecord::Base
  has_and_belongs_to_many :store_variant_items
end
