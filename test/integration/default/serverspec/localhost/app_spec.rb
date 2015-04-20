# Encoding: UTF-8

require_relative '../spec_helper'

describe 'Twitter app' do
  describe package('com.twitter.twitter-mac') do
    it 'is installed' do
      expect(subject).to be_installed.by(:pkgutil)
    end
  end

  describe file('/Applications/Twitter.app') do
    it 'is present on the filesystem' do
      expect(subject).to be_directory
    end
  end
end
