class CreateSpreeAllegroCategories < ActiveRecord::Migration
  def change
    create_table :spree_allegro_categories do |t|
      t.belongs_to :parent, index: true
      t.string :name
      t.integer :position

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
