class AddVariantAuctionMethodToSpreeAllegroProducts < ActiveRecord::Migration
  def change
    add_reference :spree_allegro_products, :variant_method, index: true
  end
end
