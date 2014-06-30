class CreateSpreeAllegroVariants < ActiveRecord::Migration
  def change
    create_table :spree_allegro_variants do |t|
      t.belongs_to :variant, index: true
      t.text :description

      t.timestamps
    end
  end
end
