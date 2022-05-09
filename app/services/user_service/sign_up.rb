# frozen_string_literal: true

module UserService
  class SignUp
   
    attr_reader :params
    def initialize(params)
      @params = params
      @user_name = params[:user_name]
      @email = params[:email]
      @password = params[:password]
      @confirm_password = params[:confirm_password]
    end

    def call

    end

    private

    attr_reader :user_name, :email, :password, :confirm_password

    def validate_user

    end
  end
end
