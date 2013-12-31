require 'spec_helper'

describe "inventories/index" do
  before(:each) do
    assign(:inventories, [
      FactoryGirl.build_stubbed(:inventory),
      FactoryGirl.build_stubbed(:inventory)
      # stub_model(Inventory,
      #   :title => "Title",
      #   :description => "Description",
      #   :quantity => "Quantity"
      # ),
      # stub_model(Inventory,
      #   :title => "Title",
      #   :description => "Description",
      #   :quantity => "Quantity"
      # )
    ])
  end

  it "renders a list of inventories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
    assert_select "tr>td", :text => 9.9.to_s, :count => 2
  end
end
