class CreateJoinTableSpreeAllegroOptionsSpreeAllegroStoreVariantItems < ActiveRecord::Migration
  def change
    create_join_table :spree_allegro_options, :store_variant_items do |t|
      # t.index [:option_id, :store_variant_item_id]
      # t.index [:store_variant_item_id, :option_id]
    end
  end
end
