class CreateSpreeAllegroShopCategories < ActiveRecord::Migration
  def change
    create_table :spree_allegro_shop_categories do |t|
      t.belongs_to :parent, index: true
      t.string :name
      t.integer :position
      t.belongs_to :store, index: true

      t.timestamps
    end
  end
end
