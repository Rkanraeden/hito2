require "test_helper"

class PurchasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase = purchases(:one)
  end

  test "should get index" do
    get purchases_url
    assert_response :success
  end

  test "should get new" do
    get new_purchase_url
    assert_response :success
  end

  test "should create purchase" do
    assert_difference("Purchase.count") do
      post purchases_url, params: { purchase: { cost_price: @purchase.cost_price, name_supplier: @purchase.name_supplier, net_price: @purchase.net_price, prod_id: @purchase.prod_id, prod_name: @purchase.prod_name, rut_supp: @purchase.rut_supp, tax: @purchase.tax, total: @purchase.total, type_doc: @purchase.type_doc, units: @purchase.units } }
    end

    assert_redirected_to purchase_url(Purchase.last)
  end

  test "should show purchase" do
    get purchase_url(@purchase)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchase_url(@purchase)
    assert_response :success
  end

  test "should update purchase" do
    patch purchase_url(@purchase), params: { purchase: { cost_price: @purchase.cost_price, name_supplier: @purchase.name_supplier, net_price: @purchase.net_price, prod_id: @purchase.prod_id, prod_name: @purchase.prod_name, rut_supp: @purchase.rut_supp, tax: @purchase.tax, total: @purchase.total, type_doc: @purchase.type_doc, units: @purchase.units } }
    assert_redirected_to purchase_url(@purchase)
  end

  test "should destroy purchase" do
    assert_difference("Purchase.count", -1) do
      delete purchase_url(@purchase)
    end

    assert_redirected_to purchases_url
  end
end
