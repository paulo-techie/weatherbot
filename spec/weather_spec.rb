require_relative '../lib/weather_bot.rb'
require_relative '../lib/weather_desc.rb'

describe Weather do
  describe 'attr_reader' do
    it 'should return string of weather description' do
      expect(subject.weather_description).to be_a(String)
    end

    it 'should return string of region' do
      expect(subject.region).to be_a(String)
    end

    it 'should return string of country name' do
      expect(subject.country_name).to be_a(String)
    end
  end

  describe 'initialize' do
    before(:each) do
      allow(subject).to receive(:country_name) { 'Kenya' }
      allow(subject).to receive(:region) { 'Nairobi' }
      allow(subject).to receive(:weather_description) { 'scattered clouds' }
    end

    it 'should return country name - Kenya' do
      expect(subject.country_name).to eql('Kenya')
    end

    it 'should return region - Nairobi' do
      expect(subject.region).to eql('Nairobi')
    end

    it 'should return weather description - scattered clouds' do
      expect(subject.weather_description).to eql('scattered clouds')
    end
  end
end
