# frozen_string_literal: true

require 'faker'

Faker::Config.random = Random.new(1)

if Project.all.empty?
  10.times do
    p Project.create(
      name: Faker::Hipster.unique.word,
      starting_date: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now)
    )
  end
end

if Technology.all.empty?
  5.times do
    p Technology.create(
      name: Faker::ProgrammingLanguage.unique.name,
      description: Faker::Hipster.sentence(word_count: 5)
    )
  end
end

Project.all.each do |project|
  project.technologies << Technology.all.sample
end
