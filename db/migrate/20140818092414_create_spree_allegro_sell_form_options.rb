class CreateSpreeAllegroSellFormOptions < ActiveRecord::Migration
  def change
    create_table :spree_allegro_sell_form_options do |t|
      t.belongs_to :category, index: true
      t.belongs_to :store_variant_item, index: true
      t.string :value
      t.string :name

      t.timestamps
    end
  end
end
