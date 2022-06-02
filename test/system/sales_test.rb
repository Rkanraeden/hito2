require "application_system_test_case"

class SalesTest < ApplicationSystemTestCase
  setup do
    @sale = sales(:one)
  end

  test "visiting the index" do
    visit sales_url
    assert_selector "h1", text: "Sales"
  end

  test "should create sale" do
    visit sales_url
    click_on "New sale"

    fill_in "Address", with: @sale.address
    fill_in "Category", with: @sale.category
    fill_in "Commune", with: @sale.commune
    fill_in "Cost price", with: @sale.cost_price
    fill_in "Date", with: @sale.date
    fill_in "Name client", with: @sale.name_client
    fill_in "Net price", with: @sale.net_price
    fill_in "Num doc", with: @sale.num_doc
    fill_in "Prod desc", with: @sale.prod_desc
    fill_in "Prod", with: @sale.prod_id
    fill_in "Region", with: @sale.region
    fill_in "Sale price", with: @sale.sale_price
    fill_in "Tax", with: @sale.tax
    fill_in "Total", with: @sale.total
    fill_in "Type doc", with: @sale.type_doc
    fill_in "Units", with: @sale.units
    fill_in "Vendor", with: @sale.vendor
    click_on "Create Sale"

    assert_text "Sale was successfully created"
    click_on "Back"
  end

  test "should update Sale" do
    visit sale_url(@sale)
    click_on "Edit this sale", match: :first

    fill_in "Address", with: @sale.address
    fill_in "Category", with: @sale.category
    fill_in "Commune", with: @sale.commune
    fill_in "Cost price", with: @sale.cost_price
    fill_in "Date", with: @sale.date
    fill_in "Name client", with: @sale.name_client
    fill_in "Net price", with: @sale.net_price
    fill_in "Num doc", with: @sale.num_doc
    fill_in "Prod desc", with: @sale.prod_desc
    fill_in "Prod", with: @sale.prod_id
    fill_in "Region", with: @sale.region
    fill_in "Sale price", with: @sale.sale_price
    fill_in "Tax", with: @sale.tax
    fill_in "Total", with: @sale.total
    fill_in "Type doc", with: @sale.type_doc
    fill_in "Units", with: @sale.units
    fill_in "Vendor", with: @sale.vendor
    click_on "Update Sale"

    assert_text "Sale was successfully updated"
    click_on "Back"
  end

  test "should destroy Sale" do
    visit sale_url(@sale)
    click_on "Destroy this sale", match: :first

    assert_text "Sale was successfully destroyed"
  end
end
