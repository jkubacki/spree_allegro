class RemoveDescriptionFromSpreeAllegroStoreVariantItems < ActiveRecord::Migration
  def change
    remove_column :spree_allegro_store_variant_items, :description
  end
end
