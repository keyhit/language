require 'rails_helper'

RSpec.describe "langs/index", type: :view do
  before(:each) do
    assign(:langs, [
      Lang.create!(
        :name => "Name"
      ),
      Lang.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of langs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
