# You can, of course, hardcode dev keys or directly pass them in as the
# first two arguments of LinkedIn::OAuth2.new
LinkedIn.configure do |config|
  config.client_id     = "7507jes2q9gtbj"
  config.client_secret = "fAqqMb4Lu77Iubvn"

  # This must exactly match the redirect URI you set on your application's
  # settings page. If your redirect_uri is dynamic, pass it into
  # `auth_code_url` instead.
  config.redirect_uri  = "http://127.0.0.1:3000/"
end