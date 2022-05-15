# frozen_string_literal: true

# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  author_id  :integer
#  title      :string
#  content    :string
#  tag_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ActiveRecord::Base
  belongs_to :users, foreign_key: :author_id, class_name: 'User'
  belongs_to :tag
end
