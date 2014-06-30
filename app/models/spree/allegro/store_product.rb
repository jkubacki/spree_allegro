class Spree::Allegro::StoreProduct < ActiveRecord::Base
  belongs_to :product, class_name: 'Spree::Product'
  belongs_to :store, class_name: 'Spree::Store'
  belongs_to :shop_category
  belongs_to :panel
  belongs_to :theme
end
