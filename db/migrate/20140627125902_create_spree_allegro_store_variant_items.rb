class CreateSpreeAllegroStoreVariantItems < ActiveRecord::Migration
  def change
    create_table :spree_allegro_store_variant_items do |t|
      t.belongs_to :store_variant, index: true
      t.string :name
      t.text :description
      t.decimal :price, precision: 8, scale: 2, null: false
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
