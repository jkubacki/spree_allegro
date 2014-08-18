class AddNumberToSpreeAllegroAuction < ActiveRecord::Migration
  def change
    add_column :spree_allegro_auctions, :number, :integer, limit: 8, after: :id
  end
end
