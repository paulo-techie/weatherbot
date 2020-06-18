require './lib/weather_bot'
require './lib/weather_desc'

describe Weather do
  before(:each) do
    allow(subject).to receive(:country_name) { 'Kenya' }
    allow(subject).to receive(:region) { 'Kenya' }
    allow(subject).to receive(:weather_description) { 'scattered clouds' }
  end

  describe 'initialize' do
    it 'should return country name' do
      expect(subject.country_name).to eql('Kenya')
    end

    it 'should return region' do
      expect(subject.region).to eql('Kenya')
    end

    it 'should weather description' do
      expect(subject.weather_description).to eql('scattered clouds')
    end
  end

  describe 'make_request_to_api_endpoint' do
    it 'return a location string' do
      expect(subject.make_request_to_api_endpoint).to be_a(String)
    end
  end
end
