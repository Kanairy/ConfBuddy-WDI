class SignupController < ApplicationController
  def index
  end

  def oatoken
    code = params[:code]
    access_token = @@oauth.get_access_token(code)
    api = LinkedIn::API.new(access_token)
    # https://developer.linkedin.com/docs/fields/basic-profile
    # can get as many of these fields as we want, simply add elements to the array below:
    original_picture = api.profile(fields: ["picture-urls::(original)"])
    #TODO: redirect to profile page or some other logical place
    render json: original_picture.to_json, status: 201
  end

  def oauth2
    LinkedIn.configure do |config|
      config.client_id     = "7507jes2q9gtbj"
      config.client_secret = "fAqqMb4Lu77Iubvn"
      config.redirect_uri  = "http://127.0.0.1:3000/login/oatoken"
    end
    @@oauth = LinkedIn::OAuth2.new
    url = @@oauth.auth_code_url
    redirect_to url
  end
end
