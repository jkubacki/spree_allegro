class Spree::Allegro::Theme < ActiveRecord::Base
  belongs_to :store
  has_many :store_products
end
