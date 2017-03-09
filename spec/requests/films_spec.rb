require 'rails_helper'

RSpec.describe "Films", type: :request do

	let!(:films){create_list(:film, 10)}
	let(:film_id){films.first.id}

  describe "GET /films" do
    before {get '/films'}

    it 'returns films' do
    	expect(json).not_to be_empty
      
    	expect(films.size).to eq(10)
    end 
    it 'returns status code 200' do 
    	expect(response).to have_http_status(200)
    end
  end
  
  describe "GET /films/:id" do
  	before {get "/films/#{film_id}"}

  	context 'when the record exist' do 
  		it 'returns the film' do
  			expect(json).not_to be_empty
  			expect(json['id']).to eq(film_id)
  		end
  		it  'returns status code 200' do
  			expect(response).to have_http_status(200)
  		end
  	end
  	context 'when the record does not exist' do
  		let(:film_id){100}
  		it 'returns status code 404' do 
  			expect(@response).to have_http_status(404)
  		end 

  		it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Film/)
      end
    end
  end

  describe 'POST /films' do
    # valid payload

    let(:valid_attributes) { { film:{title: 'Learn Elm'} } }

    context 'when the request is valid' do
      before { post '/films', params: valid_attributes }

      it 'creates a film' do
        expect(json['title']).to eq('Learn Elm')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end

  describe 'DELETE /films/:id' do
    before { delete "/films/#{film_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
