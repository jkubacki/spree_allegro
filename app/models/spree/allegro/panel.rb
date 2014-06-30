class Spree::Allegro::Panel < ActiveRecord::Base
  belongs_to :store, class_name: 'Spree::Store'
  has_many :store_products
end
