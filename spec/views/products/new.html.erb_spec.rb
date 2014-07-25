require 'rails_helper'

RSpec.describe "products/new", :type => :view do
  before(:each) do
    assign(:product, Product.new(
      :ProductName => "MyString",
      :Price => 1,
      :Description => "MyText"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_ProductName[name=?]", "product[ProductName]"

      assert_select "input#product_Price[name=?]", "product[Price]"

      assert_select "textarea#product_Description[name=?]", "product[Description]"
    end
  end
end
