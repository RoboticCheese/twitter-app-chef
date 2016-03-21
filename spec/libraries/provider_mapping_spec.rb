# Encoding: UTF-8

require_relative '../spec_helper'
require_relative '../../libraries/provider_mapping'

describe :provider_mapping do
  let(:platform) { nil }
  let(:app_provider) do
    Chef::Platform.platforms[platform] && \
      Chef::Platform.platforms[platform][:default] && \
      Chef::Platform.platforms[platform][:default][:twitter_app]
  end

  context 'Mac OS X' do
    let(:platform) { :mac_os_x }

    it 'uses the MacAppStoreApp app provider' do
      expect(app_provider).to eq(Chef::Provider::MacAppStoreApp)
    end
  end

  context 'Ubuntu' do
    let(:platform) { :ubuntu }

    it 'returns no app provider' do
      expect(app_provider).to eq(nil)
    end
  end
end
