class AddStoreProductToSpreeAllegroBanners < ActiveRecord::Migration
  def change
    add_reference :spree_allegro_banners, :store_product, index: true
  end
end
