require "test_helper"

class ProductTest < ActiveSupport::TestCase

  def setup
    @product = products(:product_one)
  end

  test "valid product" do
    assert @product.valid?
  end
end
