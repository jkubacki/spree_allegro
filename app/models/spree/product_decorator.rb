Spree::Product.class_eval do
  has_one :allegro_product, class_name: 'Spree::Allegro::Product'
  has_many :allegro_store_products, class_name: 'Spree::Allegro::StoreProduct'
  accepts_nested_attributes_for :variants
end