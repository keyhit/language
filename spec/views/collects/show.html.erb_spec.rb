require 'rails_helper'

RSpec.describe "collects/show", type: :view do
  before(:each) do
    @collect = assign(:collect, Collect.create!(
      :learned => false,
      :frequency => "Frequency"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Frequency/)
  end
end
