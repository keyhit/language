require 'rails_helper'

RSpec.describe "collects/new", type: :view do
  before(:each) do
    assign(:collect, Collect.new(
      :learned => false,
      :frequency => "MyString"
    ))
  end

  it "renders new collect form" do
    render

    assert_select "form[action=?][method=?]", collects_path, "post" do

      assert_select "input#collect_learned[name=?]", "collect[learned]"

      assert_select "input#collect_frequency[name=?]", "collect[frequency]"
    end
  end
end
