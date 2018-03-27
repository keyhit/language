require 'rails_helper'

RSpec.describe "langs/edit", type: :view do
  before(:each) do
    @lang = assign(:lang, Lang.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit lang form" do
    render

    assert_select "form[action=?][method=?]", lang_path(@lang), "post" do

      assert_select "input#lang_name[name=?]", "lang[name]"
    end
  end
end
