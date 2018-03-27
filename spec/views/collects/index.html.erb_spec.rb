require 'rails_helper'

RSpec.describe "collects/index", type: :view do
  before(:each) do
    assign(:collects, [
      Collect.create!(
        :learned => false,
        :frequency => "Frequency"
      ),
      Collect.create!(
        :learned => false,
        :frequency => "Frequency"
      )
    ])
  end

  it "renders a list of collects" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Frequency".to_s, :count => 2
  end
end
