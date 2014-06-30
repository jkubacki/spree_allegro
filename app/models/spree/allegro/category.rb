class Spree::Allegro::Category < ActiveRecord::Base
  belongs_to :parent, class_name: 'Spree::Allegro::Category', foreign_key: 'parent_id'
  has_many :children, class_name: 'Spree::Allegro::Category', foreign_key: 'parent_id'
  has_many :store_variant_items
  acts_as_paranoid

  def full_path
    if parent then parent.full_path + ' > ' + name else name end
  end

  # def self.update_tree
  #   client = AllegroConnector.connect
  #   categories =  Allegro::WebApi::Category.new(client).do_get_cats_data
  #
  #   webapi_ids = []
  #   categories.each do |cat|
  #     hash = {id: cat[:cat_id].to_i, name: cat[:cat_name], parent_id: cat[:cat_parent], position: cat[:cat_position]}
  #     if exists?(hash[:id]) then find(hash[:id]).update_attributes(hash) else create(hash) end
  #     webapi_ids << hash[:id].to_i
  #   end
  #
  #   deleted_category_ids = pluck(:id) - webapi_ids
  #   deleted_category_ids.each { |id| destroy(id) }
  # end

end
