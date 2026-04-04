require "test_helper"

class ListProductsTest < ActiveSupport::TestCase
  def setup
    @product1 = Product.create!(name: "Product 1", price: 10.00)
    @product2 = Product.create!(name: "Product 2", price: 20.00)
  end

  def test_list_products_success
    result = ListProducts.call

    assert result.success?
    assert_equal 2, result.products.count
    assert_equal @product1.id, result.products.first.id
    assert_equal @product2.id, result.products.last.id
  end

  def test_list_products_empty
    Product.destroy_all

    result = ListProducts.call

    assert result.success?
    assert_equal 0, result.products.count
  end
end
