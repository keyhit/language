require 'rails_helper'

RSpec.describe WordsController, type: :controller do
  describe 'GET #index' do
    it 'has a 200 status code' do
      get :index
      expect(response).to render_template(:index)
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #create' do
    it 'has new word' do
      post :create, params: { word: { name: 'Any Name' } }
      word = Word.first
      expect(response.content_type).to eq 'text/html'
      expect(Word.count).to be(1)
      expect(word.name).to eq('Any Name')
    end
  end

  describe 'GET #destroy' do
    it 'has remove record' do
      words = create_list(:word, 2)
      expect(words.count).to be(2)
      delete :destroy, params: { id: words.last.id }
      expect(response.status).to be(302)
    # binding.pry
    #   expect(words.count).to be(1)
    end
  end
end
