require 'spec_helper'

describe "spree/allegros/show" do
  before(:each) do
    @spree_allegro = assign(:spree_allegro, stub_model(Spree::Allegro::Product))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
