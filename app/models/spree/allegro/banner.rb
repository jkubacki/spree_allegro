class Spree::Allegro::Banner < ActiveRecord::Base
  belongs_to :image, class_name: 'Spree::Asset'
  has_and_belongs_to_many :store_products
end
