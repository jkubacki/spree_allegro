require 'spec_helper'

describe "spree/allegros/index" do
  before(:each) do
    assign(:spree_allegro_products, [
      stub_model(Spree::Allegro::Product),
      stub_model(Spree::Allegro::Product)
    ])
  end

  it "renders a list of spree/allegros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
