# frozen_string_literal: true

# == Schema Information
#
# Table name: technologies
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Technology < ApplicationRecord
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :users
end
