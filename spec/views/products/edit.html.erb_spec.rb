require 'rails_helper'

RSpec.describe "products/edit", :type => :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :ProductName => "MyString",
      :Price => 1,
      :Description => "MyText"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_ProductName[name=?]", "product[ProductName]"

      assert_select "input#product_Price[name=?]", "product[Price]"

      assert_select "textarea#product_Description[name=?]", "product[Description]"
    end
  end
end
