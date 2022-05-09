# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  full_name              :string
#  email                  :string
#  phone                  :string
#  user_code              :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  token                  :string
#  google_oauth_token     :string
#  facebook_oauth_token   :string
#
require 'rails_helper'

describe User, type: :model do
  describe '#from_omniauth' do
    context 'When omniauth is google' do
      let(:access_token) { double(info: { 'email': 'thoai@gmail.com' }) }
      context 'When user with email does not exist' do
        it 'creates new user with email' do
          expect { User.from_omniauth(access_token) }.to change { User.count }.by(1)
        end
      end

      context 'When user with email info already exist' do
        let!(:user) { FactoryBot.create :user, email: 'thoai@gmail.com' }
        it 'does not create new user' do
          expect { User.from_omniauth(access_token) }.to change { User.count }.by(0)
        end
      end
    end
  end
end
