class CreateJoinTableSpreeAllegroBannersSpreeAllegroStoreProducts < ActiveRecord::Migration
  def change
    create_join_table :spree_allegro_banners, :store_products do |t|
      # t.index [:banner_id, :store_product_id]
      # t.index [:store_product_id, :banner_id]
    end
  end
end
