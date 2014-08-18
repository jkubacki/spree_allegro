class Spree::Allegro::Banner < ActiveRecord::Base
  belongs_to :image, class_name: 'Spree::Asset'
  belongs_to :store_product
end
