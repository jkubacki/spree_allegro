class CreateSpreeAllegroStoreProducts < ActiveRecord::Migration
  def change
    create_table :spree_allegro_store_products do |t|
      t.belongs_to :product, index: true
      t.belongs_to :store, index: true
      t.belongs_to :shop_category, index: true
      t.belongs_to :panel, index: true
      t.belongs_to :theme, index: true

      t.timestamps
    end
  end
end
