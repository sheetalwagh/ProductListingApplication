require 'rails_helper'

RSpec.describe "products/show", :type => :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :ProductName => "Product Name",
      :Price => 1,
      :Description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Product Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
