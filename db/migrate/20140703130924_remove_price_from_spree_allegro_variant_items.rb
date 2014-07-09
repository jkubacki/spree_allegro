class RemovePriceFromSpreeAllegroVariantItems < ActiveRecord::Migration
  def change
    remove_column :spree_allegro_store_variant_items, :price
  end
end
