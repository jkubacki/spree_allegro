class AddPriceToSpreeAllegroStoreVariants < ActiveRecord::Migration
  def change
    add_column :spree_allegro_variants, :price, :decimal, precision: 8, scale: 2
  end
end
