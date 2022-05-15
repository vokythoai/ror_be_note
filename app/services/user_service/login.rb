# frozen_string_literal: true

require 'httparty'
require 'json'

module UserService
  # UserService::Login.new(params)
  class Login
    include HTTParty

    def initialize(params)
      @params = params
      @access_token = params[:access_token]
    end

    def login
      response = authenticate_omni_response
      authenticate_user(response)
    end

    private

    attr_reader :params, :access_token

    def authenticate_user(access_token)
      User.from_omniauth(access_token)
    end

    def authenticate_omni_response
      url = "https://www.googleais.com/oauth2/v3/tokeninfo?id_token=#{params['id_token']}"
      response = HTTParty.get(url)
      response.parsed_response
    end
  end
end
