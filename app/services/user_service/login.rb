# frozen_string_literal: true

module UserService
  # UserService::Login
  class Login
    def initialize(params)
      @params = params
      @access_token = params[:access_token]
    end

    def login
      authenticate_with_token(access_token)
    end

    private

    attr_reader :params, :access_token

    def authenticate_with_token(access_token)
      User.from_omniauth(access_token)
    end
  end
end
