class CreateSpreeAllegroAuctions < ActiveRecord::Migration
  def change
    create_table :spree_allegro_auctions do |t|
      t.boolean :active
      t.datetime :starting_at
      t.datetime :ending_at
      t.decimal :price
      t.decimal :cost
      t.belongs_to :store_variant_item, index: true

      t.timestamps
    end
  end
end
