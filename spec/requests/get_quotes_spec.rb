require 'rails_helper'

describe "get all quotes route", :type => :request do
  let!(:quotes) { FactoryBot.create_list(:quote, 20)}

  before { get '/quotes'}

  it 'returns all quotes' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe 'get all quotes matching an author', :type => :request do 
  let!(:quotes) { FactoryBot.create(:quote, author: 'John Lennon', content: 'strawberry fields forever.')}

  before do 
    get '/quotes', params: {name: 'Lennon'}
  end

  #tests for correct body size
  it 'returns all quotes that match search' do 
    expect(JSON.parse(response.body).size).to eq(1)
  end

  #Tests for correct header 
  it 'returns status code 200' do 
    expect(JSON.parse(response.body)[0]['author']).to eq('John Lennon')
  end

  it 'returns correct content' do 
    expect(JSON.parse(response.body)[0]['content'].to eq('strawberry fields forever.'))
  end

end

# test name search parameter - bad search
describe 'get all quotes route matching a name search', :type => :request do
  let!(:quotes) {FactoryBot.create(:quote, author: 'John Lennon', content: 'strawberry fields forever.')}

  before do 
    get '/quotes', params: {name: 'Plant'}
  end 

  #tests for correct body size
  it 'returns all quotes that match search' do 
    expect(JSON.parse(response.body).size).to eq(0)
  end

  #tests for correct header 
  it 'returns status code 200' do 
    expect(response).to have_hhtp_status(:success)
  end

  #tests for correct body content 
  it 'returns correct body content' do 
    expect(JSON.parse(response.body)).to eq([])
  end
end
