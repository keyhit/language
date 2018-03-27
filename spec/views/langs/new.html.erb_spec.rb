require 'rails_helper'

RSpec.describe "langs/new", type: :view do
  before(:each) do
    assign(:lang, Lang.new(
      :name => "MyString"
    ))
  end

  it "renders new lang form" do
    render

    assert_select "form[action=?][method=?]", langs_path, "post" do

      assert_select "input#lang_name[name=?]", "lang[name]"
    end
  end
end
