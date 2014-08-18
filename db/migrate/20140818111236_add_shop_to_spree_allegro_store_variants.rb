class AddShopToSpreeAllegroStoreVariants < ActiveRecord::Migration
  def change
    add_column :spree_allegro_store_variants, :shop, :boolean
  end
end
