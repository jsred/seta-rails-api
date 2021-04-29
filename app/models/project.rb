# frozen_string_literal: true

# == Schema Information
#
# Table name: projects
#
#  id            :bigint           not null, primary key
#  name          :string
#  starting_date :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Project < ApplicationRecord
  has_and_belongs_to_many :technologies
  has_and_belongs_to_many :users
end
