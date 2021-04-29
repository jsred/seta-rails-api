# frozen_string_literal: true

class CreateJoinTables < ActiveRecord::Migration[5.2]
  def change
    create_table :projects_technologies, id: false do |t|
      t.bigint :project_id
      t.bigint :technology_id
    end

    create_table :projects_users, id: false do |t|
      t.bigint :project_id
      t.bigint :user_id
    end

    create_table :users_technologies, id: false do |t|
      t.bigint :user_id
      t.bigint :technology_id
    end

    add_index :projects_technologies, :project_id
    add_index :projects_technologies, :technology_id
    add_index :projects_users, :project_id
    add_index :projects_users, :user_id
    add_index :users_technologies, :technology_id
    add_index :users_technologies, :user_id
  end
end
