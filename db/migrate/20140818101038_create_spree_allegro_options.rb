class CreateSpreeAllegroOptions < ActiveRecord::Migration
  def change
    create_table :spree_allegro_options do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
