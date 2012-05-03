require 'spec_helper'

describe OmniAuth::Strategies::Daum do
  subject do
    OmniAuth::Strategies::Daum.new(nil, @options || {})
  end

  context 'client options' do
    it 'should have correct name' do
      subject.options.name.should eq('daum')
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq('https://apis.daum.net')
    end

    it 'should have correct request token path' do
      subject.options.client_options.request_token_path.should eq('/oauth/requestToken')
    end

    it 'should have correct access token path' do
      subject.options.client_options.access_token_path.should eq('/oauth/accessToken')
    end

    it 'should have correct authorize path' do
      subject.options.client_options.authorize_path.should eq('/oauth/authorize')
    end
  end
end
