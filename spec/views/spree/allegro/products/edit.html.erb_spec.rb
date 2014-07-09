require 'spec_helper'

describe "spree/allegros/edit" do
  before(:each) do
    @spree_allegro = assign(:spree_allegro, stub_model(Spree::Allegro::Product))
  end

  it "renders the edit spree_allegro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spree_allegro_path(@spree_allegro), "post" do
    end
  end
end
