require 'rails_helper'

RSpec.describe "langs/show", type: :view do
  before(:each) do
    @lang = assign(:lang, Lang.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
