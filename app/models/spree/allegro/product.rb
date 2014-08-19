class Spree::Allegro::Product < ActiveRecord::Base
  belongs_to :variant_auction_method
  belongs_to :product, class_name: 'Spree::Product'
end
