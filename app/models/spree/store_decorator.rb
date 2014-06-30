Spree::Store.class_eval do
  has_many :allegro_store_variants, class_name: 'Spree::Allegro::StoreVariant'
end