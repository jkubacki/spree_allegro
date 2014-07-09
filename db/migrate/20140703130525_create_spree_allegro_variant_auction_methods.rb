class CreateSpreeAllegroVariantAuctionMethods < ActiveRecord::Migration
  def change
    create_table :spree_allegro_variant_auction_methods do |t|
      t.string :name

      t.timestamps
    end
  end
end
