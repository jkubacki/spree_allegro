Spree::Variant.class_eval do
  has_one :allegro_variant, class_name: 'Spree::Allegro::Variant'
  has_many :allegro_store_variants, class_name: 'Spree::Allegro::StoreVariant'
end