class RemoveVariantAndStoreFromSpreeAllegroStoreVariants < ActiveRecord::Migration
  def change
    remove_column :spree_allegro_store_variants, :store_id
    remove_column :spree_allegro_store_variants, :variant_id
  end
end
