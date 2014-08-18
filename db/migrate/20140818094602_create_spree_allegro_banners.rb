class CreateSpreeAllegroBanners < ActiveRecord::Migration
  def change
    create_table :spree_allegro_banners do |t|
      t.string :name
      t.belongs_to :image, index: true

      t.timestamps
    end
  end
end
