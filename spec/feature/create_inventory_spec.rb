require 'spec_helper'

feature 'User creates new inventory' do
  it 'creates a valid inventory' do
    visit '/inventories/new'
    fill_in "Title", with: "coffee"
    fill_in "Description", with: "Dark Roast"
    fill_in "Quantity", with: "10"
    click_on "Create Inventory"

    expect(page).to have_content "Inventory was successfully created."
  end

  it "requires a title" do
    visit '/inventories/new'
    click_on "Create Inventory"
    expect(page).to have_content "Please resubmit.", "Title can't be blank."
  end

  it "requires a description" do
    visit '/inventories/new'
    click_on "Create Inventory"
    expect(page).to have_content "Please resubmit.", "Description can't be blank."
  end

  it "requires a quantity" do
    visit '/inventories/new'
    click_on "Create Inventory"
    expect(page).to have_content "Please resubmit.", "Quantity can't be blank."
  end
end
