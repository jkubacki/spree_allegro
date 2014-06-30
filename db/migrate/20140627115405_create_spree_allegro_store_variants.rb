class CreateSpreeAllegroStoreVariants < ActiveRecord::Migration
  def change
    create_table :spree_allegro_store_variants do |t|
      t.belongs_to :variant, index: true
      t.belongs_to :store, index: true

      t.timestamps
    end
  end
end
