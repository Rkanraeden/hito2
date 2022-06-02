require "test_helper"

class SalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get sales_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_url
    assert_response :success
  end

  test "should create sale" do
    assert_difference("Sale.count") do
      post sales_url, params: { sale: { address: @sale.address, category: @sale.category, commune: @sale.commune, cost_price: @sale.cost_price, date: @sale.date, name_client: @sale.name_client, net_price: @sale.net_price, num_doc: @sale.num_doc, prod_desc: @sale.prod_desc, prod_id: @sale.prod_id, region: @sale.region, sale_price: @sale.sale_price, tax: @sale.tax, total: @sale.total, type_doc: @sale.type_doc, units: @sale.units, vendor: @sale.vendor } }
    end

    assert_redirected_to sale_url(Sale.last)
  end

  test "should show sale" do
    get sale_url(@sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_url(@sale)
    assert_response :success
  end

  test "should update sale" do
    patch sale_url(@sale), params: { sale: { address: @sale.address, category: @sale.category, commune: @sale.commune, cost_price: @sale.cost_price, date: @sale.date, name_client: @sale.name_client, net_price: @sale.net_price, num_doc: @sale.num_doc, prod_desc: @sale.prod_desc, prod_id: @sale.prod_id, region: @sale.region, sale_price: @sale.sale_price, tax: @sale.tax, total: @sale.total, type_doc: @sale.type_doc, units: @sale.units, vendor: @sale.vendor } }
    assert_redirected_to sale_url(@sale)
  end

  test "should destroy sale" do
    assert_difference("Sale.count", -1) do
      delete sale_url(@sale)
    end

    assert_redirected_to sales_url
  end
end
