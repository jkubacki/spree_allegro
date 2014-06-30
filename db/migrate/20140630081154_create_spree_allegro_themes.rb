class CreateSpreeAllegroThemes < ActiveRecord::Migration
  def change
    create_table :spree_allegro_themes do |t|
      t.string :name
      t.string :color
      t.belongs_to :store, index: true

      t.timestamps
    end
  end
end
