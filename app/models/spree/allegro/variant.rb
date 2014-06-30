class Spree::Allegro::Variant < ActiveRecord::Base
  belongs_to :variant, class_name: 'Spree::Variant'
end
