class Spree::Allegro::ShopCategory < ActiveRecord::Base
  belongs_to :parent, class_name: 'Spree::Allegro::ShopCategory', foreign_key: 'parent_id'
  has_many :children, class_name: 'Spree::Allegro::ShopCategory', foreign_key: 'parent_id'
  has_many :store_products, class_name: 'Spree::Allegro::StoreProduct'
  belongs_to :store, class_name: 'Spree::Store'
end
