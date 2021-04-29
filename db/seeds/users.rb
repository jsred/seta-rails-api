# frozen_string_literal: true

require 'faker'

Faker::Config.random = Random.new(1)

4.times do
  p User.create(
    name: Faker::GreekPhilosophers.unique.name,
    email: Faker::Internet.unique.email,
    password: '12345678'
  )
end

Project.all.each do |project|
  project.users << User.all.sample
end