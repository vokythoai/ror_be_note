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
FactoryBot.define do
  factory :user do
    password { 'Password1!234' }
  end
end
