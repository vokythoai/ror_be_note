# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_user_api

  end

  def render_success_json

  end

  def render_error_json

  end

  private
end
