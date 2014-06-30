class CreateSpreeAllegroPanels < ActiveRecord::Migration
  def change
    create_table :spree_allegro_panels do |t|
      t.string :name
      t.belongs_to :store, index: true

      t.timestamps
    end
  end
end
