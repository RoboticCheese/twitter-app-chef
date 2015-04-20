# Encoding: UTF-8

require_relative '../spec_helper'
require_relative '../../libraries/resource_twitter_app'

describe Chef::Resource::TwitterApp do
  let(:name) { 'default' }
  let(:resource) { described_class.new(name, nil) }

  describe '#initialize' do
    it 'sets the correct resource name' do
      exp = :twitter_app
      expect(resource.instance_variable_get(:@resource_name)).to eq(exp)
    end
  end

  describe '#app_name' do
    it 'uses the correct app name' do
      expect(resource.app_name).to eq('Twitter')
    end
  end

  describe '#bundle_id' do
    it 'uses the correct bundle ID' do
      expect(resource.bundle_id).to eq('com.twitter.twitter-mac')
    end
  end
end
