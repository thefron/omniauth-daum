require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies

    class Daum < OmniAuth::Strategies::OAuth
      option :name, 'daum'

      option :client_options, {
        :site => 'https://apis.daum.net',
        :request_token_path => '/oauth/requestToken',
        :access_token_path => '/oauth/accessToken',
        :authorize_path => '/oauth/authorize'
      }

      uid do
        user_info['url_name']
      end

      info do
        {
          :nickname => user_info['nickname'],
          :email => "#{user_info['url_name']}@hanmail.net"
        }
      end

      extra do
        {
          :raw_onfo => raw_info
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/yozm/v1_0/user/show.json').body)
      end

      def user_info
        @user_info ||= raw_info.nil? ? {} : raw_info['user']
      end
    end
  end
end
