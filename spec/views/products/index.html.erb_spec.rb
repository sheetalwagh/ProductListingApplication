require 'rails_helper'

RSpec.describe "products/index", :type => :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :ProductName => "Product Name",
        :Price => 1,
        :Description => "MyText"
      ),
      Product.create!(
        :ProductName => "Product Name",
        :Price => 1,
        :Description => "MyText"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Product Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
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
