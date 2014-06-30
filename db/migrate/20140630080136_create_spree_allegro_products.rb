class CreateSpreeAllegroProducts < ActiveRecord::Migration
  def change
    create_table :spree_allegro_products do |t|
      t.belongs_to :product, index: true
      t.timestamps
    end
  end
end
