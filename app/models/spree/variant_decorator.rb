Spree::Variant.class_eval do
  has_one :allegro_variant, class_name: 'Spree::Allegro::Variant'
  has_many :allegro_store_variants, class_name: 'Spree::Allegro::StoreVariant'
  has_many :spree_allegro_store_variant_items, through: :allegro_store_variants, class_name: 'Spree::Allegro::StoreVariantItem'
  accepts_nested_attributes_for :allegro_variant
  accepts_nested_attributes_for :allegro_store_variants
end