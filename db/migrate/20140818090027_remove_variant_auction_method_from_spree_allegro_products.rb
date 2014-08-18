class RemoveVariantAuctionMethodFromSpreeAllegroProducts < ActiveRecord::Migration
  def change
    remove_column :spree_allegro_products, :variant_auction_method_id
  end
end
