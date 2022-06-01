require "application_system_test_case"

class PurchasesTest < ApplicationSystemTestCase
  setup do
    @purchase = purchases(:one)
  end

  test "visiting the index" do
    visit purchases_url
    assert_selector "h1", text: "Purchases"
  end

  test "should create purchase" do
    visit purchases_url
    click_on "New purchase"

    fill_in "Cost price", with: @purchase.cost_price
    fill_in "Name supplier", with: @purchase.name_supplier
    fill_in "Net price", with: @purchase.net_price
    fill_in "Prod", with: @purchase.prod_id
    fill_in "Prod name", with: @purchase.prod_name
    fill_in "Rut supp", with: @purchase.rut_supp
    fill_in "Tax", with: @purchase.tax
    fill_in "Total", with: @purchase.total
    fill_in "Type doc", with: @purchase.type_doc
    fill_in "Units", with: @purchase.units
    click_on "Create Purchase"

    assert_text "Purchase was successfully created"
    click_on "Back"
  end

  test "should update Purchase" do
    visit purchase_url(@purchase)
    click_on "Edit this purchase", match: :first

    fill_in "Cost price", with: @purchase.cost_price
    fill_in "Name supplier", with: @purchase.name_supplier
    fill_in "Net price", with: @purchase.net_price
    fill_in "Prod", with: @purchase.prod_id
    fill_in "Prod name", with: @purchase.prod_name
    fill_in "Rut supp", with: @purchase.rut_supp
    fill_in "Tax", with: @purchase.tax
    fill_in "Total", with: @purchase.total
    fill_in "Type doc", with: @purchase.type_doc
    fill_in "Units", with: @purchase.units
    click_on "Update Purchase"

    assert_text "Purchase was successfully updated"
    click_on "Back"
  end

  test "should destroy Purchase" do
    visit purchase_url(@purchase)
    click_on "Destroy this purchase", match: :first

    assert_text "Purchase was successfully destroyed"
  end
end
