Spree::Store.class_eval do
  has_many :allegro_store_variants, class_name: 'Spree::Allegro::StoreVariant'
  has_many :spree_allegro_store_variant_items, through: :allegro_store_variants, :class_name => 'Spree::Allegro::StoreVariantItem'
  has_many :allegro_panels, class_name: 'Spree::Allegro::Panel'
  has_many :allegro_shop_categories, class_name: 'Spree::Allegro::ShopCategory'
  has_many :allegro_themes, class_name:'Spree::Allegro::Theme'
end