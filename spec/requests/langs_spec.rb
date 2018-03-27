require 'rails_helper'

RSpec.describe "Langs", type: :request do
  describe "GET /langs" do
    it "works! (now write some real specs)" do
      get langs_path
      expect(response).to have_http_status(200)
    end
  end
end
