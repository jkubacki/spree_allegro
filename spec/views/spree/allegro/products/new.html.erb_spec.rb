require 'spec_helper'

describe "spree/allegros/new" do
  before(:each) do
    assign(:spree_allegro, stub_model(Spree::Allegro::Product).as_new_record)
  end

  it "renders new spree_allegro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spree_allegro_products_path, "post" do
    end
  end
end
