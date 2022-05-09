# frozen_string_literal: true

module Api
  module V1
    # UsersController
    class UsersController < ApplicationController
      def login
        login_result = UserService::Login.new(params).login

        render json: { data: login_result }, status: 200
      end

      def sign_up

      end

      def logout

      end

      def omniauth_callbacks
        binding.pry
      end
    end
  end
end
