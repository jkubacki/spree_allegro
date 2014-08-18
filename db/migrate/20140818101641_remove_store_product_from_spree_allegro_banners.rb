class RemoveStoreProductFromSpreeAllegroBanners < ActiveRecord::Migration
  def change
    remove_column :spree_allegro_banners, :store_product_id, :string
  end
end
