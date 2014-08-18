class AddVariantAuctionMethodToSpreeAllegroStoreProducts < ActiveRecord::Migration
  def change
    add_reference :spree_allegro_store_products, :variant_auction_method
  end
end
