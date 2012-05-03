# OmniAuth Daum

[다음 OAuth](http://dna.daum.net/apis/oauth)를 위한 OmniAuth 1.0 Strategy 젬입니다.
Yozm 프로필이 생성된 사용자에 한해서 동작합니다.

## 사용법

`Gemfile`에 젬을 추가합니다.

```ruby
gem 'omniauth'
gem 'omniauth-daum'
```

`config/initializers/omniauth.rb` 파일에 다음과 같이 추가합니다.

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :daum, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end
```
`CONSUMER_KEY`와 `CONSUMER_SECRET` 부분에는 https://apis.daum.net/oauth/consumer/input 에서 생성한 Consumer 정보를 입력하면 됩니다.