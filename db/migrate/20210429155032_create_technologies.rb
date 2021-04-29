# frozen_string_literal: true

class CreateTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_table :technologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
