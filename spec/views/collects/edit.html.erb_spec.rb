require 'rails_helper'

RSpec.describe "collects/edit", type: :view do
  before(:each) do
    @collect = assign(:collect, Collect.create!(
      :learned => false,
      :frequency => "MyString"
    ))
  end

  it "renders the edit collect form" do
    render

    assert_select "form[action=?][method=?]", collect_path(@collect), "post" do

      assert_select "input#collect_learned[name=?]", "collect[learned]"

      assert_select "input#collect_frequency[name=?]", "collect[frequency]"
    end
  end
end
